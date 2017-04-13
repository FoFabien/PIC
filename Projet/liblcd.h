#define DB4 RD0
#define DB5 RD1
#define DB6 RD2
#define DB7 RD3
#define RS RD4
#define RW RD5
#define E RD6
#define VCC RD7
#define S2 RA4
#define S3 RB0

void Tempo_us(unsigned short nb_us);
void lcd_init(void);
void lcd_busy(void);
void lcd_write_instr(unsigned char c);
void lcd_putch(unsigned char c);
void lcd_puts(const unsigned char * s);
void lcd_pos(unsigned char ligne, unsigned char pos);
void lcd_clear(void);
void lcd_home(void);