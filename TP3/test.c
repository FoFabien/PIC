#include	<pic.h>				// inclut des macros + pic1684.h

__CONFIG (HS&WDTDIS&PWRTEN);	// directive pour programmer le registre CONFIG

char led=0xfe;
extern tempo (void);			// la fonction extern est défini dans un autre fichier

init (void)
{
TRISA = 0x00;
PORTA = 0xff;
TRISB = 0x01;
PORTB = 0x00;
OPTION = 0x00;
}

main (void)			
{ 
init ();

while (1)
{

while (led != 0xef && INTF != 1)
{
led = led << 1 | 0x01;
PORTA = led;
tempo ();
}
INTF = 0;

while (led != 0xfe && INTF != 1)
{
led = led >>1 | 0x80;
PORTA = led;
tempo ();
}
INTF = 0;
}
}


/*			ILLUSTRATIONS			*/

/*  valeur = eeprom_read(ADRESSE);	permet de lire l'EEPROM 	avec 0x00 =< ADRESSE <= 0x3F   	*/	
/*  eeprom_write (0x00,tempo);		permet d'écrire dans l'EEPROM 		"	"		*/
/*  asm("sleep");			permet d'introduire une instruction assembleur			*/

/*  #asm				on peut aussi écrire toute					*/
/* 	SLEEP				une routine en assembleur					*/
/*  #endasm															*/


/*
void interrupt bouton (void)		 	routine d'interruption (le nom n'a pas d'importance)	  
{
INTF=0;					le contexte est sauvegardé mais il faut réinitialiser le flag de la source d'IT
}
*/
