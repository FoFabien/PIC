opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 5239"

opt pagewidth 120

	opt lm

	processor	16F84A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 3 "H:\MicroControleur\TP3\mes.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "H:\MicroControleur\TP3\mes.c"
	dw 0x3FFE&0x3FFB&0x3FF7 ;#
# 4 "H:\MicroControleur\TP3\mes.c"
	psect eeprom_data,class=EEDATA,delta=2,space=2 ;#
# 4 "H:\MicroControleur\TP3\mes.c"
	db	0x07,0x60,0xBE,0x8E,0xFE,0x66,0x00,0 ;#
	FNCALL	_main,_init
	FNCALL	_init,_eeprom_read
	FNROOT	_main
	FNCALL	_inter,_caractere
	FNCALL	_inter,_vitesse
	FNCALL	_inter,_tempo
	FNCALL	_inter,___awmod
	FNCALL	_vitesse,_eeprom_write
	FNCALL	intlevel1,_inter
	global	intlevel1
	FNROOT	intlevel1
	global	caractere@n
	global	inter@n
	global	_EEADR
psect	text44,local,class=CODE,delta=2
global __ptext44
__ptext44:
_EEADR  equ     9
	global	_EEDATA
_EEDATA  equ     8
	global	_FSR
_FSR  equ     4
	global	_INDF
_INDF  equ     0
	global	_INTCON
_INTCON  equ     11
	global	_PCL
_PCL  equ     2
	global	_PCLATH
_PCLATH  equ     10
	global	_PORTA
_PORTA  equ     5
	global	_PORTB
_PORTB  equ     6
	global	_RTCC
_RTCC  equ     1
	global	_STATUS
_STATUS  equ     3
	global	_TMR0
_TMR0  equ     1
	global	_CARRY
_CARRY  equ     24
	global	_DC
_DC  equ     25
	global	_EEIE
_EEIE  equ     94
	global	_GIE
_GIE  equ     95
	global	_INT
_INT  equ     48
	global	_INTE
_INTE  equ     92
	global	_INTF
_INTF  equ     89
	global	_PD
_PD  equ     27
	global	_RA0
_RA0  equ     40
	global	_RA1
_RA1  equ     41
	global	_RA2
_RA2  equ     42
	global	_RA3
_RA3  equ     43
	global	_RA4
_RA4  equ     44
	global	_RB0
_RB0  equ     48
	global	_RB1
_RB1  equ     49
	global	_RB2
_RB2  equ     50
	global	_RB3
_RB3  equ     51
	global	_RB4
_RB4  equ     52
	global	_RB5
_RB5  equ     53
	global	_RB6
_RB6  equ     54
	global	_RB7
_RB7  equ     55
	global	_RBIE
_RBIE  equ     91
	global	_RBIF
_RBIF  equ     88
	global	_RP0
_RP0  equ     29
	global	_T0IE
_T0IE  equ     93
	global	_T0IF
_T0IF  equ     90
	global	_TO
_TO  equ     28
	global	_ZERO
_ZERO  equ     26
	global	_EECON1
_EECON1  equ     136
	global	_EECON2
_EECON2  equ     137
	global	_OPTION
_OPTION  equ     129
	global	_TRISA
_TRISA  equ     133
	global	_TRISB
_TRISB  equ     134
	global	_EEIF
_EEIF  equ     1092
	global	_INTEDG
_INTEDG  equ     1038
	global	_PS0
_PS0  equ     1032
	global	_PS1
_PS1  equ     1033
	global	_PS2
_PS2  equ     1034
	global	_PSA
_PSA  equ     1035
	global	_RBPU
_RBPU  equ     1039
	global	_RD
_RD  equ     1088
	global	_T0CS
_T0CS  equ     1037
	global	_T0SE
_T0SE  equ     1036
	global	_TRISA0
_TRISA0  equ     1064
	global	_TRISA1
_TRISA1  equ     1065
	global	_TRISA2
_TRISA2  equ     1066
	global	_TRISA3
_TRISA3  equ     1067
	global	_TRISA4
_TRISA4  equ     1068
	global	_TRISB0
_TRISB0  equ     1072
	global	_TRISB1
_TRISB1  equ     1073
	global	_TRISB2
_TRISB2  equ     1074
	global	_TRISB3
_TRISB3  equ     1075
	global	_TRISB4
_TRISB4  equ     1076
	global	_TRISB5
_TRISB5  equ     1077
	global	_TRISB6
_TRISB6  equ     1078
	global	_TRISB7
_TRISB7  equ     1079
	global	_WR
_WR  equ     1089
	global	_WREN
_WREN  equ     1090
	global	_WRERR
_WRERR  equ     1091
	file	"TP3.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
caractere@n:
       ds      2

inter@n:
       ds      2

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??_vitesse
??_vitesse: ;@ 0x0
	global	??_init
??_init: ;@ 0x0
	global	??_caractere
??_caractere: ;@ 0x0
	global	??_main
??_main: ;@ 0x0
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_eeprom_read
??_eeprom_read: ;@ 0x0
	ds	3
	global	eeprom_read@addr
eeprom_read@addr:	; 1 bytes @ 0x3
	ds	1
	global	??_tempo
??_tempo: ;@ 0x4
	global	?_caractere
?_caractere: ;@ 0x4
	global	??___awmod
??___awmod: ;@ 0x4
	global	?_init
?_init: ;@ 0x4
	global	??_eeprom_write
??_eeprom_write: ;@ 0x4
	global	?_eeprom_read
?_eeprom_read: ;@ 0x4
	global	?_main
?_main: ;@ 0x4
	ds	1
	global	eeprom_write@addr
eeprom_write@addr:	; 1 bytes @ 0x5
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
	global	tempo@i
tempo@i:	; 4 bytes @ 0x5
	ds	1
	global	?_eeprom_write
?_eeprom_write: ;@ 0x6
	global	eeprom_write@value
eeprom_write@value:	; 1 bytes @ 0x6
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x6
	ds	1
	global	?_vitesse
?_vitesse: ;@ 0x7
	global	?___awmod
?___awmod: ;@ 0x7
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x7
	ds	2
	global	?_tempo
?_tempo: ;@ 0x9
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x9
	ds	2
	global	??_inter
??_inter: ;@ 0xB
	ds	4
	global	?_inter
?_inter: ;@ 0xF
;Data sizes: Strings 0, constant 0, data 0, bss 4, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON           0      0       0
; BANK0           66     15      19


;Pointer list with targets:

;?___awmod	int  size(1); Largest target is 0


;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0   10   0.00
;               _init
;  _init                                              0    0   10   0.00
;        _eeprom_read
;    _eeprom_read                                     4    0   10   0.00
;                                    0 BANK0    4
; Estimated maximum call depth 2
;_inter                                               4    0  170   0.00
;                                   11 BANK0    4
;          _caractere
;            _vitesse
;              _tempo
;            ___awmod
;  _tempo                                             5    0   20   0.00
;                                    4 BANK0    5
;  ___awmod                                           3    4  130   0.00
;                                    4 BANK0    7
;  _caractere                                         0    0    0   0.00
;  _vitesse                                           0    0   20   0.00
;       _eeprom_write
;    _eeprom_write                                    2    1   20   0.00
;                                    4 BANK0    3
; Estimated maximum call depth 2
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;COMMON               0      0       0       1        0.0%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;SFR1                 0      0       0       2        0.0%
;BITSFR1              0      0       0       2        0.0%
;STACK                0      0       0       2        0.0%
;BITBANK0            42      0       0       3        0.0%
;BANK0               42      F      13       4       28.8%
;ABS                  0      0      13       5        0.0%
;DATA                 0      0      13       6        0.0%
;EEDATA              40      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 65 in file "H:\MicroControleur\TP3\mes.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;                  2    4[BANK0 ] int 
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0
;      Locals:         0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_init
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"H:\MicroControleur\TP3\mes.c"
	line	65
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;mes.c: 64: main(void)
;mes.c: 65: {
	
_main:	
	opt stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	66
	
l30000337:	
;mes.c: 66: init ();
	fcall	_init
	
l20:	
	goto	l20
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	71
	signat	_main,90
	global	_init
psect	text45,local,class=CODE,delta=2
global __ptext45
__ptext45:

; *************** function _init *****************
; Defined at:
;		line 9 in file "H:\MicroControleur\TP3\mes.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0
;      Locals:         0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_eeprom_read
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text45
	file	"H:\MicroControleur\TP3\mes.c"
	line	9
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
;pic1684.h: 17: volatile unsigned char INDF @ 0x00;
;pic1684.h: 18: volatile unsigned char RTCC @ 0x01;
;pic1684.h: 19: volatile unsigned char TMR0 @ 0x01;
;pic1684.h: 20: volatile unsigned char PCL @ 0x02;
;pic1684.h: 21: volatile unsigned char STATUS @ 0x03;
;pic1684.h: 22: unsigned char FSR @ 0x04;
;pic1684.h: 23: volatile unsigned char PORTA @ 0x05;
;pic1684.h: 24: volatile unsigned char PORTB @ 0x06;
;pic1684.h: 25: volatile unsigned char EEDATA @ 0x08;
;pic1684.h: 26: volatile unsigned char EEADR @ 0x09;
	
_init:	
	opt stack 4
; Regs used in _init: [wreg+status,2+status,0+pclath+cstack]
	line	10
	
l30000331:	
;mes.c: 10: STATUS = 0x20;
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(3)	;volatile
	line	11
;mes.c: 11: INTCON = 0xB0;
	movlw	(0B0h)
	movwf	(11)	;volatile
	
l30000332:	
	line	12
;mes.c: 12: TRISA = 0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	
l30000333:	
	line	13
;mes.c: 13: PORTA = 0x1F;
	movlw	(01Fh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	
l30000334:	
	line	14
;mes.c: 14: TRISB = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	
l30000335:	
	line	15
;mes.c: 15: PORTB = 0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	movwf	(6)	;volatile
	
l30000336:	
	line	16
;mes.c: 16: OPTION = eeprom_read(0x00);;
	movlw	(0)
	fcall	_eeprom_read
	bsf	status, 5	;RP0=1, select bank1
	movwf	(129)^080h
	
l4:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
; =============== function _init ends ============

psect	text46,local,class=CODE,delta=2
global __ptext46
__ptext46:
	line	17
	signat	_init,88
	global	_eeprom_read

; *************** function _eeprom_read *****************
; Defined at:
;		line 8 in file "eeread.c"
; Parameters:    Size  Location     Type
;  addr            1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  addr            1    3[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0
;      Locals:         0       4
;      Temp:     3
;      Total:    4
; This function calls:
;		Nothing
; This function is called by:
;		_init
; This function uses a non-reentrant model
; 
psect	text46
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\eeread.c"
	line	8
	global	__size_of_eeprom_read
	__size_of_eeprom_read	equ	__end_of_eeprom_read-_eeprom_read
	
_eeprom_read:	
	opt stack 3
; Regs used in _eeprom_read: [wreg+status,2+status,0]
;eeprom_read@addr stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(eeprom_read@addr)
	
l30000299:	
	
l27:	
	line	9
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1089/8)^080h,(1089)&7
	goto	u71
	goto	u70
u71:
	goto	l27
u70:
	
l30000300:	
	line	10
	bcf	status, 5	;RP0=0, select bank0
	movf	(eeprom_read@addr),w
	movwf	(9)	;volatile
	movlw	(03Fh)
	movwf	(??_eeprom_read+0+0)
	movf	(??_eeprom_read+0+0),w
	bsf	status, 5	;RP0=1, select bank1
	andwf	(136)^080h,f	;volatile
	bsf	(1088/8)^080h,(1088)&7
	clrc
	btfsc	(1088/8)^080h,(1088)&7
	setc
	movlw	0
	skipnc
	movlw	1

	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_eeprom_read+1+0)
	clrf	(??_eeprom_read+1+0+1)
	movf	(8),w	;volatile
	
l26:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_read
	__end_of_eeprom_read:
; =============== function _eeprom_read ends ============

psect	text47,local,class=CODE,delta=2
global __ptext47
__ptext47:
	line	11
	signat	_eeprom_read,4217
	global	_inter

; *************** function _inter *****************
; Defined at:
;		line 74 in file "H:\MicroControleur\TP3\mes.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+0, btemp+1, btemp+2, btemp+3, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0
;      Locals:         0       4
;      Temp:     4
;      Total:    4
; This function calls:
;		_caractere
;		_vitesse
;		_tempo
;		___awmod
; This function is called by:
;		Interrupt level 1
; This function uses a non-reentrant model
; 
psect	text47
	file	"H:\MicroControleur\TP3\mes.c"
	line	74
	global	__size_of_inter
	__size_of_inter	equ	__end_of_inter-_inter
;mes.c: 73: void interrupt inter (void)
;mes.c: 74: {
	
_inter:	
	opt stack 6
; Regs used in _inter: [allreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+1
	movwf	saved_w
	movf	status,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_inter+0)
	movf	fsr0,w
	movwf	(??_inter+1)
	movf	pclath,w
	movwf	(??_inter+2)
	movf	btemp+0,w
	movwf	(??_inter+3)
	ljmp	_inter
psect	text47
	line	76
	
i1l30000350:	
;mes.c: 75: static int n = 0;
;mes.c: 76: if (T0IF == 1 && n == 8)
	btfss	(90/8),(90)&7
	goto	u20_21
	goto	u20_20
u20_21:
	goto	i1l30000353
u20_20:
	
i1l30000351:	
	movlw	08h
	xorwf	(inter@n),w
	iorwf	(inter@n+1),w
	skipz
	goto	u21_21
	goto	u21_20
u21_21:
	goto	i1l30000353
u21_20:
	
i1l30000352:	
	line	78
;mes.c: 77: {
;mes.c: 78: caractere();
	fcall	_caractere
	
i1l30000353:	
	line	81
;mes.c: 79: }
;mes.c: 81: if (INTF == 1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(89/8),(89)&7
	goto	u22_21
	goto	u22_20
u22_21:
	goto	i1l30000356
u22_20:
	
i1l30000354:	
	line	83
;mes.c: 82: {
;mes.c: 83: vitesse();
	fcall	_vitesse
	
i1l30000355:	
	line	84
;mes.c: 84: tempo();
	fcall	_tempo
	
i1l30000356:	
	line	86
;mes.c: 85: }
;mes.c: 86: n++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	addwf	(inter@n),f
	skipnc
	incf	(inter@n+1),f
	movlw	high(01h)
	addwf	(inter@n+1),f
	
i1l30000357:	
	line	87
;mes.c: 87: n %= 9;
	movf	(inter@n+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(inter@n),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	movlw	low(09h)
	movwf	0+(?___awmod)+02h
	movlw	high(09h)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(inter@n+1)
	addwf	(inter@n+1)
	movf	(0+(?___awmod)),w
	clrf	(inter@n)
	addwf	(inter@n)

	
i1l30000358:	
	line	88
;mes.c: 88: INTF = 0;
	bcf	(89/8),(89)&7
	
i1l30000359:	
	line	89
;mes.c: 89: T0IF = 0;
	bcf	(90/8),(90)&7
	
i1l23:	
	movf	(??_inter+3),w
	movwf	btemp+0
	movf	(??_inter+2),w
	movwf	pclath
	movf	(??_inter+1),w
	movwf	fsr0
	movf	(??_inter+0),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_inter
	__end_of_inter:
; =============== function _inter ends ============

psect	text48,local,class=CODE,delta=2
global __ptext48
__ptext48:
	line	90
	signat	_inter,88
	global	_tempo

; *************** function _tempo *****************
; Defined at:
;		line 5 in file "H:\MicroControleur\TP3\tempo.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  i               4    5[BANK0 ] long 
; Return value:  Size  Location     Type
;                  2    9[BANK0 ] int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0
;      Locals:         0       5
;      Temp:     1
;      Total:    5
; This function calls:
;		Nothing
; This function is called by:
;		_inter
; This function uses a non-reentrant model
; 
psect	text48
	file	"H:\MicroControleur\TP3\tempo.c"
	line	5
	global	__size_of_tempo
	__size_of_tempo	equ	__end_of_tempo-_tempo
;tempo.c: 4: tempo (void)
;tempo.c: 5: {
	
_tempo:	
	opt stack 5
; Regs used in _tempo: [wreg+status,2+status,0]
	line	7
	
i1l30000260:	
;tempo.c: 6: long i;
;tempo.c: 7: for (i=1; i<=10000 ; i++);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(tempo@i+3)
	movlw	0
	movwf	(tempo@i+2)
	movlw	0
	movwf	(tempo@i+1)
	movlw	01h
	movwf	(tempo@i)

	
i1l30000263:	
	movlw	01h
	addwf	(tempo@i),f
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1_21
	addwf	(tempo@i+1),f
u1_21:
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1_22
	addwf	(tempo@i+2),f
u1_22:
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1_23
	addwf	(tempo@i+3),f
u1_23:

	
i1l30000264:	
	movf	(tempo@i+3),w
	xorlw	80h
	movwf	(??_tempo+0+0)
	movlw	high highword(02711h)^80h
	subwf	(??_tempo+0+0),w
	skipz
	goto	u2_24
	movlw	low highword(02711h)
	subwf	(tempo@i+2),w
	skipz
	goto	u2_24
	movlw	high(02711h)
	subwf	(tempo@i+1),w
	skipz
	goto	u2_24
	movlw	low(02711h)
	subwf	(tempo@i),w
u2_24:

	skipc
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l30000263
u2_20:
	
i1l1:	
	return
	opt stack 0
GLOBAL	__end_of_tempo
	__end_of_tempo:
; =============== function _tempo ends ============

psect	text49,local,class=CODE,delta=2
global __ptext49
__ptext49:
	line	8
	signat	_tempo,90
	global	___awmod

; *************** function ___awmod *****************
; Defined at:
;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\awmod.c"
; Parameters:    Size  Location     Type
;  dividend        2    7[BANK0 ] int 
;  divisor         2    9[BANK0 ] int 
; Auto vars:     Size  Location     Type
;  sign            1    5[BANK0 ] unsigned char 
;  counter         1    6[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  2    7[BANK0 ] int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0
;      Locals:         0       7
;      Temp:     1
;      Total:    7
; This function calls:
;		Nothing
; This function is called by:
;		_inter
; This function uses a non-reentrant model
; 
psect	text49
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
i1l30000312:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___awmod@sign)
	
i1l30000313:	
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l30000315
u11_20:
	
i1l30000314:	
	line	10
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	
i1l30000315:	
	line	13
	btfss	(___awmod@divisor+1),7
	goto	u12_21
	goto	u12_20
u12_21:
	goto	i1l30000317
u12_20:
	
i1l30000316:	
	line	14
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
i1l30000317:	
	line	15
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u13_21
	goto	u13_20
u13_21:
	goto	i1l30000326
u13_20:
	
i1l30000318:	
	line	16
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	goto	i1l30000321
	
i1l30000319:	
	line	18
	movlw	01h
u14_25:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u14_25
	
i1l30000320:	
	line	19
	movlw	(01h)
	movwf	(??___awmod+0+0)
	movf	(??___awmod+0+0),w
	addwf	(___awmod@counter),f
	
i1l30000321:	
	line	17
	btfss	(___awmod@divisor+1),(15)&7
	goto	u15_21
	goto	u15_20
u15_21:
	goto	i1l30000319
u15_20:
	
i1l30000322:	
	line	22
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u16_25
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u16_25:
	skipc
	goto	u16_21
	goto	u16_20
u16_21:
	goto	i1l30000324
u16_20:
	
i1l30000323:	
	line	23
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
i1l30000324:	
	line	24
	movlw	01h
u17_25:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u17_25
	
i1l30000325:	
	line	25
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u18_21
	goto	u18_20
u18_21:
	goto	i1l30000322
u18_20:
	
i1l30000326:	
	line	27
	movf	(___awmod@sign),w
	skipz
	goto	u19_20
	goto	i1l30000328
u19_20:
	
i1l30000327:	
	line	28
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
i1l30000328:	
	line	29
	
i1l268:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
; =============== function ___awmod ends ============

psect	text50,local,class=CODE,delta=2
global __ptext50
__ptext50:
	line	30
	signat	___awmod,8314
	global	_caractere

; *************** function _caractere *****************
; Defined at:
;		line 20 in file "H:\MicroControleur\TP3\mes.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0
;      Locals:         0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		Nothing
; This function is called by:
;		_inter
; This function uses a non-reentrant model
; 
psect	text50
	file	"H:\MicroControleur\TP3\mes.c"
	line	20
	global	__size_of_caractere
	__size_of_caractere	equ	__end_of_caractere-_caractere
;mes.c: 19: void caractere()
;mes.c: 20: {
	
_caractere:	
	opt stack 5
; Regs used in _caractere: [wreg-fsr0h+status,2+status,0]
	
i1l30000338:	
	goto	i1l30000348
	
i1l30000339:	
	line	25
;mes.c: 25: PORTB = 0xFA;
	movlw	(0FAh)
	movwf	(6)	;volatile
	goto	i1l30000349
	
i1l30000340:	
	line	28
;mes.c: 28: PORTB = 0x3E;
	movlw	(03Eh)
	movwf	(6)	;volatile
	goto	i1l30000349
	
i1l30000341:	
	line	31
;mes.c: 31: PORTB = 0x1A;
	movlw	(01Ah)
	movwf	(6)	;volatile
	goto	i1l30000349
	
i1l30000342:	
	line	34
;mes.c: 34: PORTB = 0x7A;
	movlw	(07Ah)
	movwf	(6)	;volatile
	goto	i1l30000349
	
i1l30000343:	
	line	37
;mes.c: 37: PORTB = 0xDE;
	movlw	(0DEh)
	movwf	(6)	;volatile
	goto	i1l30000349
	
i1l30000344:	
	line	40
;mes.c: 40: PORTB = 0x8E;
	movlw	(08Eh)
	movwf	(6)	;volatile
	goto	i1l30000349
	
i1l30000345:	
	line	43
;mes.c: 43: PORTB = 0xF6;
	movlw	(0F6h)
	movwf	(6)	;volatile
	goto	i1l30000349
	
i1l30000346:	
	line	46
;mes.c: 46: PORTB = 0xFC;
	movlw	(0FCh)
	movwf	(6)	;volatile
	goto	i1l30000349
	
i1l30000348:	
	line	22
		goto	i1l30013
i1l30014:
	bcf	status, 5	;RP0=0, select bank0
	movf (caractere@n),w
	xorlw	0^0
	skipnz
	goto	i1l30000339
	xorlw	1^0
	skipnz
	goto	i1l30000340
	xorlw	2^1
	skipnz
	goto	i1l30000341
	xorlw	3^2
	skipnz
	goto	i1l30000342
	xorlw	4^3
	skipnz
	goto	i1l30000343
	xorlw	5^4
	skipnz
	goto	i1l30000344
	xorlw	6^5
	skipnz
	goto	i1l30000345
	xorlw	7^6
	skipnz
	goto	i1l30000346
	goto	i1l30000349

i1l30013:
	movf (caractere@n+1),w
	xorlw	0^0
	skipnz
	goto	i1l30014
	goto	i1l30000349

	
i1l30000349:	
	line	49
;mes.c: 49: n++;
	movlw	low(01h)
	addwf	(caractere@n),f
	skipnc
	incf	(caractere@n+1),f
	movlw	high(01h)
	addwf	(caractere@n+1),f
	line	50
;mes.c: 50: n %= 8;
	movlw	low(07h)
	andwf	(caractere@n),f
	movlw	high(07h)
	andwf	(caractere@n+1),f
	
i1l5:	
	return
	opt stack 0
GLOBAL	__end_of_caractere
	__end_of_caractere:
; =============== function _caractere ends ============

psect	text51,local,class=CODE,delta=2
global __ptext51
__ptext51:
	line	51
	signat	_caractere,88
	global	_vitesse

; *************** function _vitesse *****************
; Defined at:
;		line 54 in file "H:\MicroControleur\TP3\mes.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0
;      Locals:         0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_eeprom_write
; This function is called by:
;		_inter
; This function uses a non-reentrant model
; 
psect	text51
	file	"H:\MicroControleur\TP3\mes.c"
	line	54
	global	__size_of_vitesse
	__size_of_vitesse	equ	__end_of_vitesse-_vitesse
;mes.c: 53: void vitesse()
;mes.c: 54: {
	
_vitesse:	
	opt stack 5
; Regs used in _vitesse: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
i1l30000360:	
;mes.c: 55: if(OPTION == 0x00)
	bsf	status, 5	;RP0=1, select bank1
	movf	(129)^080h,f
	skipz
	goto	u23_21
	goto	u23_20
u23_21:
	goto	i1l30000362
u23_20:
	
i1l30000361:	
	line	56
;mes.c: 56: OPTION = 0x07;
	movlw	(07h)
	movwf	(129)^080h
	goto	i1l30000363
	
i1l30000362:	
	line	58
;mes.c: 57: else
;mes.c: 58: OPTION--;
	movlw	low(01h)
	subwf	(129)^080h,f
	
i1l30000363:	
	line	59
;mes.c: 59: eeprom_write (0x00,OPTION);
	movf	(129)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_eeprom_write)
	movlw	(0)
	fcall	_eeprom_write
	
i1l30000364:	
	line	60
;mes.c: 60: PORTA = OPTION | 0xF8;
	bsf	status, 5	;RP0=1, select bank1
	movf	(129)^080h,w
	iorlw	0F8h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	
i1l16:	
	return
	opt stack 0
GLOBAL	__end_of_vitesse
	__end_of_vitesse:
; =============== function _vitesse ends ============

psect	text52,local,class=CODE,delta=2
global __ptext52
__ptext52:
	line	61
	signat	_vitesse,88
	global	_eeprom_write

; *************** function _eeprom_write *****************
; Defined at:
;		line 8 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\eewrite.c"
; Parameters:    Size  Location     Type
;  addr            1    wreg     unsigned char 
;  value           1    6[BANK0 ] unsigned char 
; Auto vars:     Size  Location     Type
;  addr            1    5[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0
;      Locals:         0       3
;      Temp:     1
;      Total:    3
; This function calls:
;		Nothing
; This function is called by:
;		_vitesse
; This function uses a non-reentrant model
; 
psect	text52
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\eewrite.c"
	line	8
	global	__size_of_eeprom_write
	__size_of_eeprom_write	equ	__end_of_eeprom_write-_eeprom_write
	
_eeprom_write:	
	opt stack 4
; Regs used in _eeprom_write: [wreg+status,2+status,0]
;eeprom_write@addr stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(eeprom_write@addr)
	
i1l33:	
	
i1l34:	
	line	9
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1089/8)^080h,(1089)&7
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l34
u8_20:
	
i1l30000302:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(eeprom_write@addr),w
	movwf	(9)	;volatile
	movf	(eeprom_write@value),w
	movwf	(8)	;volatile
	
i1l30000303:	
	movlw	(03Fh)
	movwf	(??_eeprom_write+0+0)
	movf	(??_eeprom_write+0+0),w
	bsf	status, 5	;RP0=1, select bank1
	andwf	(136)^080h,f	;volatile
	
i1l30000304:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(24/8),(24)&7
	
i1l30000305:	
	btfss	(95/8),(95)&7
	goto	u9_21
	goto	u9_20
u9_21:
	goto	i1l37
u9_20:
	
i1l30000306:	
	bsf	(24/8),(24)&7
	
i1l37:	
	bcf	(95/8),(95)&7
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1090/8)^080h,(1090)&7
	
i1l30000307:	
	movlw	(055h)
	movwf	(137)^080h	;volatile
	movlw	(0AAh)
	movwf	(137)^080h	;volatile
	
i1l30000308:	
	bsf	(1089/8)^080h,(1089)&7
	
i1l30000309:	
	bcf	(1090/8)^080h,(1090)&7
	
i1l30000310:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(24/8),(24)&7
	goto	u10_21
	goto	u10_20
u10_21:
	goto	i1l30
u10_20:
	
i1l30000311:	
	bsf	(95/8),(95)&7
	
i1l30:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_write
	__end_of_eeprom_write:
; =============== function _eeprom_write ends ============

psect	text53,local,class=CODE,delta=2
global __ptext53
__ptext53:
	line	10
	signat	_eeprom_write,8312
	global	btemp
	btemp set 04Eh

	DABS	1,78,2	;btemp
	end
