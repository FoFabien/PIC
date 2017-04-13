#include <pic.h>
#include "liblcd.h"

__CONFIG (XT&WDTDIS&PWRTDIS&BOREN&LVPDIS&DPROT&WRTEN&DEBUGEN&PROTECT);

static int seconde;
static int minute;
static int heure;
static int temp;
static int mode;

void init(void)
{
INTCON = 0xC4;
PIE1 = 0x01;
PIR1 = 0x00;
T1CON = 0x0F;
T2CON = 0x04;

TRISA = 0x1F;
TRISB = 0x01;
PORTB = 0x00;
TRISC = 0x02;
TRISD = 0x00;
//TRISE = 0x00;

TMR1L = 0xFF;
TMR1H = 0x7F;

OPTION = 0x80;

seconde = 0;
minute = 0;
heure = 0;
temp = 0;
mode = 0;
}

void horloge(void)
{
	seconde++;
	if(seconde > 59)
	{
		seconde = 0;
		minute++;
		if(minute > 59)
		{
			minute = 0;
			heure++;
			if(heure > 23)
				heure = 0;
		}
	}
}

void affichageHeure(void)
{
	static int i = 0;
	lcd_clear();
	Tempo_us(200);
	lcd_home();
	Tempo_us(200);
	if((mode == 1) && (i > 2))
	{
		lcd_putch(' ');
		lcd_putch(' ');
	}
	else
	{
		lcd_putch((heure / 10) + '0');
		lcd_putch((heure % 10) + '0');
	}
	lcd_putch(':');
	if((mode == 2) && (i > 2))
	{
		lcd_putch(' ');
		lcd_putch(' ');
	}
	else
	{
		lcd_putch((minute / 10) + '0');
		lcd_putch((minute % 10) + '0');
	}
	lcd_putch(':');
	lcd_putch((seconde / 10) + '0');
	lcd_putch((seconde % 10) + '0');
	
	i = (i + 1) % 4;
}

int maintien ()
{
	temp=0;
 	while(S3 == 0)
	{
		if (temp>=2)
		return 1;

	}
	return 0;
}

void reglage(void)
{
	static int i;
	if(S2 == 0)
	{
		Tempo_us(20000);
		temp = 0;
		while(S2 == 0)
		{
			if((temp >= 2) || (mode != 0))
			{
				mode = (mode + 1) % 3;
				break;
			}	
		}
		Tempo_us(20000);
	}

	/*if(S3 == 0)
	{
		Tempo_us(20000);
		temp = 0;
		while(S3 == 0)
		{
			if(temp >= 2)
			{
				
			}	
		}
	}*/
	switch(mode)
	{
		case 1:
			if(S3 == 0)
			{
				Tempo_us(20000);
				if(S3 == 0)
					heure = heure + 1 + 2 * i;
				i = 1;
			}
			else i = 0;
			break;
		case 2:
			if(S3 == 0)
			{
				Tempo_us(20000);
				if(S3 == 0)
					minute = minute + 1 + 2 * i;
				i = 1;
			}
			else i = 0;
			break;
	}enseirb

	if(minute > 59)
		minute = 0;
	if(heure > 23)
		heure = 0;
}

main(void)
{ 
init ();
lcd_init();

while(1)
	{
		reglage();
		affichageHeure();
		Tempo_us(10000);
	}
}

void heartBeat(void)
{
	static unsigned short n = 0;
	if(n == 0)
		RB1 = 1;
	else RB1 = 0;
	n = (n + 1) % 2;
}

void interrupt timer(void)		//	routine d'interruption
{
	if(TMR1IF == 1)
	{
		TMR1L = 0xFF;
		TMR1H = 0x7F;
		heartBeat();
		horloge();
		temp++;
	}
	TMR1IF = 0;
}

