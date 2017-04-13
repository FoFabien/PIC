#include <pic.h>
#include "liblcd.h"

void Tempo_us(unsigned short nb_us)
{
	PR2 = 0x20;
	for(;nb_us > 0;nb_us--)
	{
		while(TMR2IF == 0);
		TMR2IF = 0;
	}
	//for(nb_us = nb_us;nb_us > 0;nb_us--)
	//{}
}

void lcd_init(void)
{
	VCC = 0;
	Tempo_us(500);
	RB2 = 1;
	VCC = 1;
	Tempo_us(20000);
	lcd_write_instr(0x30);
	Tempo_us(4500);
	lcd_write_instr(0x30);
	Tempo_us(200);
	lcd_write_instr(0x30);
	lcd_write_instr(0x20);
	lcd_write_instr(0x28);
	lcd_write_instr(0x01);
	lcd_write_instr(0x0C);
	lcd_write_instr(0x06);
	lcd_write_instr(0x06);
	lcd_write_instr(0x0C);
	RB2 = 0;
}

void lcd_busy(void)
{
	char c;
	RB3 = 1;
	TRISD = 0x08;
	RS = 0;
	RW = 1;
	do
	{
		E = 1;
		Tempo_us(5);
		c = PORTD;
		E = 0; 
		Tempo_us(5);                     
	}while((c & 0x08) == 0x08);
	TRISD = 0x00;
	RB3 = 0;
}

void lcd_write_instr(unsigned char c)
{
	lcd_busy();
	E = 0;
	PORTD = 0x80 | ((c >> 4) & 0x0F);
	E = 1;
	Tempo_us(5);
	E = 0;
	PORTD = 0x80 | (c & 0x0F);
	E = 1;
	Tempo_us(5);
	E = 0;
}

void lcd_putch(unsigned char c)
{
	lcd_busy();
	E = 0;
	PORTD = 0x90 | ((c >> 4) & 0x0F);
	E = 1;
	Tempo_us(5);
	E = 0;
	PORTD = 0x90 | (c & 0x0F);
	E = 1;
	Tempo_us(5);
	E = 0;	
}

void lcd_puts(const unsigned char * s)
{
	int i = 0;
	while(s[i] != '\0')
	{
		lcd_putch(s[i]);
		i++;
	}
}

void lcd_pos(unsigned char ligne, unsigned char pos)
{
	unsigned char i = 0;
	lcd_home();
 	i = ligne + pos;
	while(i > 0)
	{
		lcd_write_instr(0x14);
		i--;
	}	
}

void lcd_clear(void)
{
	lcd_write_instr(0x01);
}

void lcd_home(void)
{
	lcd_write_instr(0x02);
}