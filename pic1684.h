
#ifndef	_HTC_H_
#warning Header file pic1684.h included directly. Use #include <htc.h> instead.
#endif

/*
 *	Header file for the Microchip 
 *	PIC 16CR83 chip
 *	PIC 16F83 chip
 *	PIC 16C84 chip
 *	PIC 16F84 chip
 *	PIC 16F84A chip
 *	PIC 16CR84 chip
 *	Midrange Microcontrollers
 */

static volatile unsigned char	RTCC	@ 0x01;
static volatile unsigned char	TMR0	@ 0x01;
static volatile unsigned char	PCL	@ 0x02;
static volatile unsigned char	STATUS	@ 0x03;
static          unsigned char	FSR	@ 0x04;
static volatile unsigned char	PORTA	@ 0x05;
static volatile unsigned char	PORTB	@ 0x06;
static volatile unsigned char	EEDATA	@ 0x08;
static volatile unsigned char	EEADR	@ 0x09;
static          unsigned char	PCLATH	@ 0x0A;
static volatile unsigned char	INTCON	@ 0x0B;

static          unsigned char bank1	OPTION	@ 0x81;
static volatile	unsigned char bank1	TRISA	@ 0x85;
static volatile	unsigned char bank1	TRISB	@ 0x86;
static volatile unsigned char bank1	EECON1	@ 0x88;
static volatile unsigned char bank1	EECON2	@ 0x89;

/*	STATUS bits	*/
static volatile bit	RP0	@ (unsigned)&STATUS*8+5;
static volatile bit	TO	@ (unsigned)&STATUS*8+4;
static volatile bit	PD	@ (unsigned)&STATUS*8+3;
static volatile bit	ZERO	@ (unsigned)&STATUS*8+2;
static volatile bit	DC	@ (unsigned)&STATUS*8+1;
static volatile bit	CARRY	@ (unsigned)&STATUS*8+0;

/*      PORTA bits      */
static volatile bit	RA4	@ (unsigned)&PORTA*8+4;
static volatile bit	RA3	@ (unsigned)&PORTA*8+3;
static volatile bit	RA2	@ (unsigned)&PORTA*8+2;
static volatile bit	RA1	@ (unsigned)&PORTA*8+1;
static volatile bit	RA0	@ (unsigned)&PORTA*8+0;

/*      PORTB bits      */
static volatile bit	RB7	@ (unsigned)&PORTB*8+7;
static volatile bit	RB6	@ (unsigned)&PORTB*8+6;
static volatile bit	RB5	@ (unsigned)&PORTB*8+5;
static volatile bit	RB4	@ (unsigned)&PORTB*8+4;
static volatile bit	RB3	@ (unsigned)&PORTB*8+3;
static volatile bit	RB2	@ (unsigned)&PORTB*8+2;
static volatile bit	RB1	@ (unsigned)&PORTB*8+1;
static volatile bit	RB0	@ (unsigned)&PORTB*8+0;
static volatile bit	INT	@ (unsigned)&PORTB*8+0;

/*	INTCON bits	*/
static volatile bit	GIE	@ (unsigned)&INTCON*8+7;
static volatile bit	EEIE	@ (unsigned)&INTCON*8+6;
static volatile bit	T0IE	@ (unsigned)&INTCON*8+5;
static volatile bit	INTE	@ (unsigned)&INTCON*8+4;
static volatile bit	RBIE	@ (unsigned)&INTCON*8+3;
static volatile bit	T0IF	@ (unsigned)&INTCON*8+2;
static volatile bit	INTF	@ (unsigned)&INTCON*8+1;
static volatile bit	RBIF	@ (unsigned)&INTCON*8+0;

/*	OPTION bits	*/
static bank1 bit	RBPU	@ (unsigned)&OPTION*8+7;
static bank1 bit	INTEDG	@ (unsigned)&OPTION*8+6;
static bank1 bit	T0CS	@ (unsigned)&OPTION*8+5;
static bank1 bit	T0SE	@ (unsigned)&OPTION*8+4;
static bank1 bit	PSA	@ (unsigned)&OPTION*8+3;
static bank1 bit	PS2	@ (unsigned)&OPTION*8+2;
static bank1 bit	PS1	@ (unsigned)&OPTION*8+1;
static bank1 bit	PS0	@ (unsigned)&OPTION*8+0;

/*      TRISA bits      */
static volatile bank1 bit	TRISA4	@ (unsigned)&TRISA*8+4;
static volatile bank1 bit	TRISA3	@ (unsigned)&TRISA*8+3;
static volatile bank1 bit	TRISA2	@ (unsigned)&TRISA*8+2;
static volatile bank1 bit	TRISA1	@ (unsigned)&TRISA*8+1;
static volatile bank1 bit	TRISA0	@ (unsigned)&TRISA*8+0;

/*      TRISB bits      */
static volatile bank1 bit	TRISB7	@ (unsigned)&TRISB*8+7;
static volatile bank1 bit	TRISB6	@ (unsigned)&TRISB*8+6;
static volatile bank1 bit	TRISB5	@ (unsigned)&TRISB*8+5;
static volatile bank1 bit	TRISB4	@ (unsigned)&TRISB*8+4;
static volatile bank1 bit	TRISB3	@ (unsigned)&TRISB*8+3;
static volatile bank1 bit	TRISB2	@ (unsigned)&TRISB*8+2;
static volatile bank1 bit	TRISB1	@ (unsigned)&TRISB*8+1;
static volatile bank1 bit	TRISB0	@ (unsigned)&TRISB*8+0;

/*	EECON1 bits	*/
static volatile bank1 bit	EEIF	@ (unsigned)&EECON1*8+4;
static volatile bank1 bit	WRERR	@ (unsigned)&EECON1*8+3;
static volatile bank1 bit	WREN	@ (unsigned)&EECON1*8+2;
static volatile bank1 bit	WR	@ (unsigned)&EECON1*8+1;
static volatile bank1 bit	RD	@ (unsigned)&EECON1*8+0;

					
#define CONFIG_ADDR	0x2007

/*osc configurations*/
#define RC		0x3FFF		// resistor/capacitor
#define HS		0x3FFE		// high speed crystal/resonator
#define XT		0x3FFD		// crystal/resonator
#define LP		0x3FFC		// low power crystal/resonator

/*watchdog*/
#define WDTEN		0x3FFF		// enable watchdog timer
#define WDTDIS		0x3FFB		// disable watchdog timer

/*power up timer*/
#if defined (_16C84)
#define PWRTEN		0x3FFF		/* enable power up timer*/
#define PWRTDIS		0x3FF7		/* disable power up timer */
#else
#define PWRTDIS		0x3FFF		/* disable power up timer */
#define PWRTEN		0x3FF7		/* enable power up timer */
#endif

#if defined (_16CR83) || defined(_16CR84)
#define DP		0x3F7F		// data code is protected
#define PROTECT		0x008F		// program code is protected
// alternative definition
#define DATPROT		0x3F7F		// use DP
#define DATUNPROT	0x3FFF		// use UNPROTECT
#elif defined (_16C84)
#define PROTECT		0x3FEF		// program code is protected
#elif defined (_16F83) || defined(_16F84) || defined(_16F84A)
#define PROTECT		0x000F		// program code is protected
#endif

#define UNPROTECT	0x3FFF		// do not protect the code
