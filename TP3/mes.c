#include <pic.h>

__CONFIG (HS&WDTDIS&PWRTEN);				/* configuration avec chien de garde validé			*/
__EEPROM_DATA (0x07,0x60,0xBE,0x8E,0xFE,0x66,0x00,0);	/* valeur initiale du registre OPTION (vitesse)
							   puis les codes du message "16F84 " puis 0 (caractère \0 de fin de chaîne)   */


void init(void)
{
STATUS = 0x20;
INTCON = 0xB0;
TRISA = 0x00;
PORTA = 0x1F;
TRISB = 0x01;
PORTB = 0x00;
OPTION = eeprom_read(0x00);;
}

void caractere()
{
	static int n = 0;
	switch(n)
	{
		case 0:
			PORTB = 0xFA;
			break;
		case 1:
			PORTB = 0x3E;
			break;
		case 2:
			PORTB = 0x1A;
			break;
		case 3:
			PORTB = 0x7A;
			break;
		case 4:
			PORTB = 0xDE;
			break;
		case 5:
			PORTB = 0x8E;
			break;
		case 6:
			PORTB = 0xF6;
			break;
		case 7:
			PORTB = 0xFC;
			break;
	}
	n++;
	n %= 8;
}

void vitesse()
{
	if(OPTION == 0x00)
		OPTION = 0x07;
	else
		OPTION--;
	eeprom_write (0x00,OPTION);
	PORTA = OPTION | 0xF8;
}


main(void)
{ 
init ();

while(1)
	{
	}
}

void interrupt inter (void)		//	routine d'interruption
{
	static int n = 0;
	if (T0IF == 1 && n == 8)		// teste si c'est le timer qui a déclenché l'IT
	{
	caractere();					// réintialisation du flag
	}

	if (INTF == 1)		// teste si c'est le bouton qui a déclenché l'IT
	{
	vitesse();
	tempo();
	}
	n++;
	n %= 9;
	INTF = 0;
	T0IF = 0;
}



/*			ILLUSTRATIONS			*/

/*  valeur = eeprom_read(ADRESSE);	permet de lire l'EEPROM 	avec 0x00 =< ADRESSE <= 0x3F   	*/	
/*  eeprom_write (0x00,tempo);		permet d'écrire dans l'EEPROM 		"	"		*/
/*  asm("sleep");			permet d'introduire une instruction assembleur			*/

/*  #asm				on peut aussi écrire toute					*/
/* 	SLEEP				une routine en assembleur					*/
/*  #endasm															*/