opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 5239"

opt pagewidth 120

	opt lm

	processor	16F877A
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
# 4 "H:\MicroControleur\Projet\test_led.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "H:\MicroControleur\Projet\test_led.c"
	dw 0x3FFD&0x3FFB&0x3FFF&0x3FFF&0x3F7F&0x3EFF&0x3FFF&0x37FF&0x1FFF ;#
;BANK0:	_main->_reglage
;COMMON:	_reglage->___awmod
;BANK0:	_reglage->___awmod
;COMMON:	_main->_affichageHeure
;COMMON:	_affichageHeure->_lcd_putch
;BANK0:	_lcd_putch->_lcd_busy
;COMMON:	_lcd_busy->_Tempo_us
;COMMON:	_lcd_putch->_Tempo_us
;BANK0:	_affichageHeure->___awdiv
;COMMON:	_affichageHeure->___awmod
	FNCALL	_main,_init
	FNCALL	_main,_lcd_init
	FNCALL	_main,_reglage
	FNCALL	_main,_affichageHeure
	FNCALL	_main,_Tempo_us
	FNCALL	_reglage,_Tempo_us
	FNCALL	_reglage,___awmod
	FNCALL	_affichageHeure,_lcd_clear
	FNCALL	_affichageHeure,_Tempo_us
	FNCALL	_affichageHeure,_lcd_home
	FNCALL	_affichageHeure,_lcd_putch
	FNCALL	_affichageHeure,___awdiv
	FNCALL	_affichageHeure,___awmod
	FNCALL	_lcd_init,_Tempo_us
	FNCALL	_lcd_init,_lcd_write_instr
	FNCALL	_lcd_clear,_lcd_write_instr
	FNCALL	_lcd_putch,_lcd_busy
	FNCALL	_lcd_putch,_Tempo_us
	FNCALL	_lcd_home,_lcd_write_instr
	FNCALL	_lcd_write_instr,_lcd_busy
	FNCALL	_lcd_write_instr,_Tempo_us
	FNCALL	_lcd_busy,_Tempo_us
	FNROOT	_main
	FNCALL	_timer,_heartBeat
	FNCALL	_timer,_horloge
	FNCALL	intlevel1,_timer
	global	intlevel1
	FNROOT	intlevel1
	global	_seconde
	global	_temp
	global	affichageHeure@i
	global	heartBeat@n
	global	reglage@i
	global	_heure
	global	_minute
	global	_mode
	global	_ADCON0
psect	text121,local,class=CODE,delta=2
global __ptext121
__ptext121:
_ADCON0  equ     31
	global	_ADRESH
_ADRESH  equ     30
	global	_CCP1CON
_CCP1CON  equ     23
	global	_CCP2CON
_CCP2CON  equ     29
	global	_CCPR1H
_CCPR1H  equ     22
	global	_CCPR1L
_CCPR1L  equ     21
	global	_CCPR2H
_CCPR2H  equ     28
	global	_CCPR2L
_CCPR2L  equ     27
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
	global	_PIR1
_PIR1  equ     12
	global	_PIR2
_PIR2  equ     13
	global	_PORTA
_PORTA  equ     5
	global	_PORTB
_PORTB  equ     6
	global	_PORTC
_PORTC  equ     7
	global	_PORTD
_PORTD  equ     8
	global	_PORTE
_PORTE  equ     9
	global	_RCREG
_RCREG  equ     26
	global	_RCSTA
_RCSTA  equ     24
	global	_SSPBUF
_SSPBUF  equ     19
	global	_SSPCON
_SSPCON  equ     20
	global	_STATUS
_STATUS  equ     3
	global	_T1CON
_T1CON  equ     16
	global	_T2CON
_T2CON  equ     18
	global	_TMR0
_TMR0  equ     1
	global	_TMR1H
_TMR1H  equ     15
	global	_TMR1L
_TMR1L  equ     14
	global	_TMR2
_TMR2  equ     17
	global	_TXREG
_TXREG  equ     25
	global	_ADCS0
_ADCS0  equ     254
	global	_ADCS1
_ADCS1  equ     255
	global	_ADDEN
_ADDEN  equ     195
	global	_ADGO
_ADGO  equ     250
	global	_ADIF
_ADIF  equ     102
	global	_ADON
_ADON  equ     248
	global	_BCLIF
_BCLIF  equ     107
	global	_CARRY
_CARRY  equ     24
	global	_CCP1IF
_CCP1IF  equ     98
	global	_CCP1M0
_CCP1M0  equ     184
	global	_CCP1M1
_CCP1M1  equ     185
	global	_CCP1M2
_CCP1M2  equ     186
	global	_CCP1M3
_CCP1M3  equ     187
	global	_CCP1X
_CCP1X  equ     189
	global	_CCP1Y
_CCP1Y  equ     188
	global	_CCP2IF
_CCP2IF  equ     104
	global	_CCP2M0
_CCP2M0  equ     232
	global	_CCP2M1
_CCP2M1  equ     233
	global	_CCP2M2
_CCP2M2  equ     234
	global	_CCP2M3
_CCP2M3  equ     235
	global	_CCP2X
_CCP2X  equ     237
	global	_CCP2Y
_CCP2Y  equ     236
	global	_CHS0
_CHS0  equ     251
	global	_CHS1
_CHS1  equ     252
	global	_CHS2
_CHS2  equ     253
	global	_CKP
_CKP  equ     164
	global	_CMIF
_CMIF  equ     110
	global	_CREN
_CREN  equ     196
	global	_DC
_DC  equ     25
	global	_EEIF
_EEIF  equ     108
	global	_FERR
_FERR  equ     194
	global	_GIE
_GIE  equ     95
	global	_GODONE
_GODONE  equ     250
	global	_INTE
_INTE  equ     92
	global	_INTF
_INTF  equ     89
	global	_IRP
_IRP  equ     31
	global	_OERR
_OERR  equ     193
	global	_PD
_PD  equ     27
	global	_PEIE
_PEIE  equ     94
	global	_PSPIF
_PSPIF  equ     103
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
	global	_RA5
_RA5  equ     45
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
	global	_RC0
_RC0  equ     56
	global	_RC1
_RC1  equ     57
	global	_RC2
_RC2  equ     58
	global	_RC3
_RC3  equ     59
	global	_RC4
_RC4  equ     60
	global	_RC5
_RC5  equ     61
	global	_RC6
_RC6  equ     62
	global	_RC7
_RC7  equ     63
	global	_RCIF
_RCIF  equ     101
	global	_RD0
_RD0  equ     64
	global	_RD1
_RD1  equ     65
	global	_RD2
_RD2  equ     66
	global	_RD3
_RD3  equ     67
	global	_RD4
_RD4  equ     68
	global	_RD5
_RD5  equ     69
	global	_RD6
_RD6  equ     70
	global	_RD7
_RD7  equ     71
	global	_RE0
_RE0  equ     72
	global	_RE1
_RE1  equ     73
	global	_RE2
_RE2  equ     74
	global	_RP0
_RP0  equ     29
	global	_RP1
_RP1  equ     30
	global	_RX9
_RX9  equ     198
	global	_RX9D
_RX9D  equ     192
	global	_SPEN
_SPEN  equ     199
	global	_SREN
_SREN  equ     197
	global	_SSPEN
_SSPEN  equ     165
	global	_SSPIF
_SSPIF  equ     99
	global	_SSPM0
_SSPM0  equ     160
	global	_SSPM1
_SSPM1  equ     161
	global	_SSPM2
_SSPM2  equ     162
	global	_SSPM3
_SSPM3  equ     163
	global	_SSPOV
_SSPOV  equ     166
	global	_T0IE
_T0IE  equ     93
	global	_T0IF
_T0IF  equ     90
	global	_T1CKPS0
_T1CKPS0  equ     132
	global	_T1CKPS1
_T1CKPS1  equ     133
	global	_T1OSCEN
_T1OSCEN  equ     131
	global	_T1SYNC
_T1SYNC  equ     130
	global	_T2CKPS0
_T2CKPS0  equ     144
	global	_T2CKPS1
_T2CKPS1  equ     145
	global	_TMR0IE
_TMR0IE  equ     93
	global	_TMR0IF
_TMR0IF  equ     90
	global	_TMR1CS
_TMR1CS  equ     129
	global	_TMR1IF
_TMR1IF  equ     96
	global	_TMR1ON
_TMR1ON  equ     128
	global	_TMR2IF
_TMR2IF  equ     97
	global	_TMR2ON
_TMR2ON  equ     146
	global	_TO
_TO  equ     28
	global	_TOUTPS0
_TOUTPS0  equ     147
	global	_TOUTPS1
_TOUTPS1  equ     148
	global	_TOUTPS2
_TOUTPS2  equ     149
	global	_TOUTPS3
_TOUTPS3  equ     150
	global	_TXIF
_TXIF  equ     100
	global	_WCOL
_WCOL  equ     167
	global	_ZERO
_ZERO  equ     26
	global	_ADCON1
_ADCON1  equ     159
	global	_ADRESL
_ADRESL  equ     158
	global	_CMCON
_CMCON  equ     156
	global	_CVRCON
_CVRCON  equ     157
	global	_OPTION
_OPTION  equ     129
	global	_PCON
_PCON  equ     142
	global	_PIE1
_PIE1  equ     140
	global	_PIE2
_PIE2  equ     141
	global	_PR2
_PR2  equ     146
	global	_SPBRG
_SPBRG  equ     153
	global	_SSPADD
_SSPADD  equ     147
	global	_SSPCON2
_SSPCON2  equ     145
	global	_SSPSTAT
_SSPSTAT  equ     148
	global	_TRISA
_TRISA  equ     133
	global	_TRISB
_TRISB  equ     134
	global	_TRISC
_TRISC  equ     135
	global	_TRISD
_TRISD  equ     136
	global	_TRISE
_TRISE  equ     137
	global	_TXSTA
_TXSTA  equ     152
	global	_ACKDT
_ACKDT  equ     1165
	global	_ACKEN
_ACKEN  equ     1164
	global	_ACKSTAT
_ACKSTAT  equ     1166
	global	_ADCS2
_ADCS2  equ     1278
	global	_ADFM
_ADFM  equ     1279
	global	_ADIE
_ADIE  equ     1126
	global	_BCLIE
_BCLIE  equ     1131
	global	_BF
_BF  equ     1184
	global	_BOR
_BOR  equ     1136
	global	_BRGH
_BRGH  equ     1218
	global	_C1INV
_C1INV  equ     1252
	global	_C1OUT
_C1OUT  equ     1254
	global	_C2INV
_C2INV  equ     1253
	global	_C2OUT
_C2OUT  equ     1255
	global	_CCP1IE
_CCP1IE  equ     1122
	global	_CCP2IE
_CCP2IE  equ     1128
	global	_CIS
_CIS  equ     1251
	global	_CKE
_CKE  equ     1190
	global	_CM0
_CM0  equ     1248
	global	_CM1
_CM1  equ     1249
	global	_CM2
_CM2  equ     1250
	global	_CMIE
_CMIE  equ     1134
	global	_CSRC
_CSRC  equ     1223
	global	_CVR0
_CVR0  equ     1256
	global	_CVR1
_CVR1  equ     1257
	global	_CVR2
_CVR2  equ     1258
	global	_CVR3
_CVR3  equ     1259
	global	_CVREN
_CVREN  equ     1263
	global	_CVROE
_CVROE  equ     1262
	global	_CVRR
_CVRR  equ     1261
	global	_DA
_DA  equ     1189
	global	_EEIE
_EEIE  equ     1132
	global	_GCEN
_GCEN  equ     1167
	global	_IBF
_IBF  equ     1103
	global	_IBOV
_IBOV  equ     1101
	global	_INTEDG
_INTEDG  equ     1038
	global	_OBF
_OBF  equ     1102
	global	_PCFG0
_PCFG0  equ     1272
	global	_PCFG1
_PCFG1  equ     1273
	global	_PCFG2
_PCFG2  equ     1274
	global	_PCFG3
_PCFG3  equ     1275
	global	_PEN
_PEN  equ     1162
	global	_POR
_POR  equ     1137
	global	_PS0
_PS0  equ     1032
	global	_PS1
_PS1  equ     1033
	global	_PS2
_PS2  equ     1034
	global	_PSA
_PSA  equ     1035
	global	_PSPIE
_PSPIE  equ     1127
	global	_PSPMODE
_PSPMODE  equ     1100
	global	_RBPU
_RBPU  equ     1039
	global	_RCEN
_RCEN  equ     1163
	global	_RCIE
_RCIE  equ     1125
	global	_RSEN
_RSEN  equ     1161
	global	_RW
_RW  equ     1186
	global	_SEN
_SEN  equ     1160
	global	_SMP
_SMP  equ     1191
	global	_SSPIE
_SSPIE  equ     1123
	global	_START
_START  equ     1187
	global	_STOP
_STOP  equ     1188
	global	_SYNC
_SYNC  equ     1220
	global	_T0CS
_T0CS  equ     1037
	global	_T0SE
_T0SE  equ     1036
	global	_TMR1IE
_TMR1IE  equ     1120
	global	_TMR2IE
_TMR2IE  equ     1121
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
	global	_TRISA5
_TRISA5  equ     1069
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
	global	_TRISC0
_TRISC0  equ     1080
	global	_TRISC1
_TRISC1  equ     1081
	global	_TRISC2
_TRISC2  equ     1082
	global	_TRISC3
_TRISC3  equ     1083
	global	_TRISC4
_TRISC4  equ     1084
	global	_TRISC5
_TRISC5  equ     1085
	global	_TRISC6
_TRISC6  equ     1086
	global	_TRISC7
_TRISC7  equ     1087
	global	_TRISD0
_TRISD0  equ     1088
	global	_TRISD1
_TRISD1  equ     1089
	global	_TRISD2
_TRISD2  equ     1090
	global	_TRISD3
_TRISD3  equ     1091
	global	_TRISD4
_TRISD4  equ     1092
	global	_TRISD5
_TRISD5  equ     1093
	global	_TRISD6
_TRISD6  equ     1094
	global	_TRISD7
_TRISD7  equ     1095
	global	_TRISE0
_TRISE0  equ     1096
	global	_TRISE1
_TRISE1  equ     1097
	global	_TRISE2
_TRISE2  equ     1098
	global	_TRMT
_TRMT  equ     1217
	global	_TX9
_TX9  equ     1222
	global	_TX9D
_TX9D  equ     1216
	global	_TXEN
_TXEN  equ     1221
	global	_TXIE
_TXIE  equ     1124
	global	_UA
_UA  equ     1185
	global	_EEADR
_EEADR  equ     269
	global	_EEADRH
_EEADRH  equ     271
	global	_EEADRL
_EEADRL  equ     269
	global	_EEDATA
_EEDATA  equ     268
	global	_EEDATH
_EEDATH  equ     270
	global	_EECON1
_EECON1  equ     396
	global	_EECON2
_EECON2  equ     397
	global	_EEPGD
_EEPGD  equ     3175
	global	_RD
_RD  equ     3168
	global	_WR
_WR  equ     3169
	global	_WREN
_WREN  equ     3170
	global	_WRERR
_WRERR  equ     3171
	file	"Projet.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_heure:
       ds      2

_minute:
       ds      2

_mode:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_seconde:
       ds      2

_temp:
       ds      2

affichageHeure@i:
       ds      2

heartBeat@n:
       ds      2

reglage@i:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??_init
??_init: ;@ 0x0
	global	?_init
?_init: ;@ 0x0
	global	??___awdiv
??___awdiv: ;@ 0x0
	global	??___awmod
??___awmod: ;@ 0x0
	global	??_lcd_busy
??_lcd_busy: ;@ 0x0
	global	?_Tempo_us
?_Tempo_us: ;@ 0x0
	global	??_Tempo_us
??_Tempo_us: ;@ 0x0
	global	Tempo_us@nb_us
Tempo_us@nb_us:	; 2 bytes @ 0x0
	ds	1
	global	??_lcd_home
??_lcd_home: ;@ 0x1
	global	??_lcd_clear
??_lcd_clear: ;@ 0x1
	global	??_lcd_init
??_lcd_init: ;@ 0x1
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x1
	ds	1
	global	??_lcd_putch
??_lcd_putch: ;@ 0x2
	global	?_lcd_busy
?_lcd_busy: ;@ 0x2
	global	??_lcd_write_instr
??_lcd_write_instr: ;@ 0x2
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x2
	ds	1
	global	?_lcd_write_instr
?_lcd_write_instr: ;@ 0x3
	global	?_lcd_putch
?_lcd_putch: ;@ 0x3
	global	?_lcd_home
?_lcd_home: ;@ 0x3
	global	?_lcd_init
?_lcd_init: ;@ 0x3
	global	?_lcd_clear
?_lcd_clear: ;@ 0x3
	global	??_affichageHeure
??_affichageHeure: ;@ 0x3
	global	??_main
??_main: ;@ 0x3
	global	?_reglage
?_reglage: ;@ 0x3
	ds	2
	global	?_affichageHeure
?_affichageHeure: ;@ 0x5
	global	?_main
?_main: ;@ 0x5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?___awmod
?___awmod: ;@ 0x0
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x0
	global	lcd_busy@c
lcd_busy@c:	; 1 bytes @ 0x0
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x0
	ds	1
	global	lcd_putch@c
lcd_putch@c:	; 1 bytes @ 0x1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x1
	global	lcd_write_instr@c
lcd_write_instr@c:	; 1 bytes @ 0x1
	ds	1
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x2
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x2
	ds	2
	global	??_reglage
??_reglage: ;@ 0x4
	global	?___awdiv
?___awdiv: ;@ 0x4
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x4
	ds	2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x6
	ds	3
	global	??_horloge
??_horloge: ;@ 0x9
	global	??_heartBeat
??_heartBeat: ;@ 0x9
	ds	1
	global	?_horloge
?_horloge: ;@ 0xA
	ds	1
	global	?_heartBeat
?_heartBeat: ;@ 0xB
	global	??_timer
??_timer: ;@ 0xB
	ds	4
	global	?_timer
?_timer: ;@ 0xF
;Data sizes: Strings 0, constant 0, data 0, bss 16, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      5      11
; BANK0           80     15      25
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:

;?___awmod	int  size(1); Largest target is 0
;?___awdiv	int  size(1); Largest target is 0


;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0 1702   0.00
;               _init
;           _lcd_init
;            _reglage
;     _affichageHeure
;           _Tempo_us
;  _reglage                                           5    0  269   0.00
;                                    4 BANK0    5
;           _Tempo_us
;            ___awmod
;  _affichageHeure                                    2    0 1154   0.00
;                                    3 COMMO    2
;          _lcd_clear
;           _Tempo_us
;           _lcd_home
;          _lcd_putch
;            ___awdiv
;            ___awmod
;  _lcd_init                                          0    0  228   0.00
;           _Tempo_us
;    _lcd_write_instr
;  _init                                              0    0    0   0.00
;    _lcd_clear                                       0    0  177   0.00
;    _lcd_write_instr
;    ___awdiv                                         5    4  354   0.00
;                                    0 COMMO    1
;                                    0 BANK0    8
;    _lcd_putch                                       2    0  177   0.00
;                                    2 COMMO    1
;                                    1 BANK0    1
;           _lcd_busy
;           _Tempo_us
;    _lcd_home                                        0    0  177   0.00
;    _lcd_write_instr
;    ___awmod                                         3    4  218   0.00
;                                    0 COMMO    3
;                                    0 BANK0    4
;      _lcd_write_instr                               2    0  177   0.00
;                                    2 COMMO    1
;                                    1 BANK0    1
;           _lcd_busy
;           _Tempo_us
;        _lcd_busy                                    1    0   78   0.00
;                                    0 BANK0    1
;           _Tempo_us
;          _Tempo_us                                  0    2   51   0.00
;                                    0 COMMO    2
; Estimated maximum call depth 5
;_timer                                               4    0    0   0.00
;                                   11 BANK0    4
;          _heartBeat
;            _horloge
;  _horloge                                           1    0    0   0.00
;                                    9 BANK0    1
;  _heartBeat                                         2    0    0   0.00
;                                    9 BANK0    2
; Estimated maximum call depth 1
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      5       B       1       78.6%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0      24       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50      F      19       5       31.3%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      24      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 164 in file "H:\MicroControleur\Projet\test_led.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;                  2    5[COMMON] int 
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_init
;		_lcd_init
;		_reglage
;		_affichageHeure
;		_Tempo_us
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"H:\MicroControleur\Projet\test_led.c"
	line	164
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;test_led.c: 163: main(void)
;test_led.c: 164: {
	
_main:	
	opt stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	165
	
l30001053:	
;test_led.c: 165: init ();
	fcall	_init
	line	166
;test_led.c: 166: lcd_init();
	fcall	_lcd_init
	
l30001054:	
	line	170
;test_led.c: 169: {
;test_led.c: 170: reglage();
	fcall	_reglage
	
l30001055:	
	line	171
;test_led.c: 171: affichageHeure();
	fcall	_affichageHeure
	
l30001056:	
	line	172
;test_led.c: 172: Tempo_us(10000);
	movlw	low(02710h)
	movwf	(?_Tempo_us)
	movlw	high(02710h)
	movwf	((?_Tempo_us))+1
	fcall	_Tempo_us
	goto	l30001054
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	174
	signat	_main,90
	global	_reglage
psect	text122,local,class=CODE,delta=2
global __ptext122
__ptext122:

; *************** function _reglage *****************
; Defined at:
;		line 104 in file "H:\MicroControleur\Projet\test_led.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       5       0       0       0
;      Temp:     5
;      Total:    5
; This function calls:
;		_Tempo_us
;		___awmod
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text122
	file	"H:\MicroControleur\Projet\test_led.c"
	line	104
	global	__size_of_reglage
	__size_of_reglage	equ	__end_of_reglage-_reglage
;test_led.c: 103: void reglage(void)
;test_led.c: 104: {
	
_reglage:	
	opt stack 5
; Regs used in _reglage: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	106
	
l30001031:	
;test_led.c: 105: static int i;
;test_led.c: 106: if(RA4 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(44/8),(44)&7
	goto	u911
	goto	u910
u911:
	goto	l30001049
u910:
	
l30001032:	
	line	108
;test_led.c: 107: {
;test_led.c: 108: Tempo_us(20000);
	movlw	low(04E20h)
	movwf	(?_Tempo_us)
	movlw	high(04E20h)
	movwf	((?_Tempo_us))+1
	fcall	_Tempo_us
	
l30001033:	
	line	109
;test_led.c: 109: temp = 0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_temp)
	movlw	high(0)
	movwf	((_temp))+1
	goto	l18
	
l30001034:	
	line	112
;test_led.c: 111: {
;test_led.c: 112: if((temp >= 2) || (mode != 0))
	movf	(_temp+1),w
	xorlw	80h
	movwf	(??_reglage+0+0)
	movlw	(high(02h))^80h
	subwf	(??_reglage+0+0),w
	skipz
	goto	u925
	movlw	low(02h)
	subwf	(_temp),w
u925:

	skipnc
	goto	u921
	goto	u920
u921:
	goto	l30001036
u920:
	
l30001035:	
	movf	(_mode+1),w
	iorwf	(_mode),w
	skipnz
	goto	u931
	goto	u930
u931:
	goto	l18
u930:
	
l30001036:	
	line	114
;test_led.c: 113: {
;test_led.c: 114: mode = (mode + 1) % 3;
	movf	(_mode),w
	addlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movf	(_mode+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(?___awmod)
	movlw	low(03h)
	movwf	0+(?___awmod)+02h
	movlw	high(03h)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(_mode+1)
	addwf	(_mode+1)
	movf	(0+(?___awmod)),w
	clrf	(_mode)
	addwf	(_mode)

	goto	l30001037
	
l18:	
	line	110
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(44/8),(44)&7
	goto	u941
	goto	u940
u941:
	goto	l30001034
u940:
	
l30001037:	
	line	118
;test_led.c: 116: }
;test_led.c: 117: }
;test_led.c: 118: Tempo_us(20000);
	movlw	low(04E20h)
	movwf	(?_Tempo_us)
	movlw	high(04E20h)
	movwf	((?_Tempo_us))+1
	fcall	_Tempo_us
	goto	l30001049
	
l24:	
	line	136
;test_led.c: 136: if(RB0 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u951
	goto	u950
u951:
	goto	l30001042
u950:
	
l30001038:	
	line	138
;test_led.c: 137: {
;test_led.c: 138: Tempo_us(20000);
	movlw	low(04E20h)
	movwf	(?_Tempo_us)
	movlw	high(04E20h)
	movwf	((?_Tempo_us))+1
	fcall	_Tempo_us
	
l30001039:	
	line	139
;test_led.c: 139: if(RB0 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u961
	goto	u960
u961:
	goto	l30001041
u960:
	
l30001040:	
	line	140
;test_led.c: 140: heure = heure + 1 + 2 * i;
	movf	(reglage@i+1),w
	movwf	(??_reglage+0+0+1)
	movf	(reglage@i),w
	movwf	(??_reglage+0+0)
	movlw	01h
	movwf	(??_reglage+2+0)
u975:
	clrc
	rlf	(??_reglage+0+0),f
	rlf	(??_reglage+0+1),f
	decfsz	(??_reglage+2+0),f
	goto	u975
	movf	(_heure),w
	addwf	0+(??_reglage+0+0),w
	movwf	(??_reglage+3+0)
	movf	(_heure+1),w
	skipnc
	incf	(_heure+1),w
	addwf	1+(??_reglage+0+0),w
	movwf	1+(??_reglage+3+0)
	movf	0+(??_reglage+3+0),w
	addlw	low(01h)
	movwf	(_heure)
	movf	1+(??_reglage+3+0),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_heure)
	
l30001041:	
	line	141
;test_led.c: 141: i = 1;
	movlw	low(01h)
	movwf	(reglage@i)
	movlw	high(01h)
	movwf	((reglage@i))+1
	goto	l30001050
	
l30001042:	
	line	143
;test_led.c: 143: else i = 0;
	movlw	low(0)
	movwf	(reglage@i)
	movlw	high(0)
	movwf	((reglage@i))+1
	goto	l30001050
	
l28:	
	line	146
;test_led.c: 146: if(RB0 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u981
	goto	u980
u981:
	goto	l30001042
u980:
	
l30001043:	
	line	148
;test_led.c: 147: {
;test_led.c: 148: Tempo_us(20000);
	movlw	low(04E20h)
	movwf	(?_Tempo_us)
	movlw	high(04E20h)
	movwf	((?_Tempo_us))+1
	fcall	_Tempo_us
	
l30001044:	
	line	149
;test_led.c: 149: if(RB0 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u991
	goto	u990
u991:
	goto	l30001041
u990:
	
l30001045:	
	line	150
;test_led.c: 150: minute = minute + 1 + 2 * i;
	movf	(reglage@i+1),w
	movwf	(??_reglage+0+0+1)
	movf	(reglage@i),w
	movwf	(??_reglage+0+0)
	movlw	01h
	movwf	(??_reglage+2+0)
u1005:
	clrc
	rlf	(??_reglage+0+0),f
	rlf	(??_reglage+0+1),f
	decfsz	(??_reglage+2+0),f
	goto	u1005
	movf	(_minute),w
	addwf	0+(??_reglage+0+0),w
	movwf	(??_reglage+3+0)
	movf	(_minute+1),w
	skipnc
	incf	(_minute+1),w
	addwf	1+(??_reglage+0+0),w
	movwf	1+(??_reglage+3+0)
	movf	0+(??_reglage+3+0),w
	addlw	low(01h)
	movwf	(_minute)
	movf	1+(??_reglage+3+0),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_minute)
	goto	l30001041
	
l30001049:	
	line	133
		goto	l30017
l30018:
	movf (_mode),w
	xorlw	1^0
	skipnz
	goto	l24
	xorlw	2^1
	skipnz
	goto	l28
	goto	l30001050

l30017:
	movf (_mode+1),w
	xorlw	0^0
	skipnz
	goto	l30018
	goto	l30001050

	
l30001050:	
	line	157
;test_led.c: 157: if(minute > 59)
	movf	(_minute+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_reglage+0+0)
	movlw	(high(03Ch))^80h
	subwf	(??_reglage+0+0),w
	skipz
	goto	u1015
	movlw	low(03Ch)
	subwf	(_minute),w
u1015:

	skipc
	goto	u1011
	goto	u1010
u1011:
	goto	l32
u1010:
	
l30001051:	
	line	158
;test_led.c: 158: minute = 0;
	movlw	low(0)
	movwf	(_minute)
	movlw	high(0)
	movwf	((_minute))+1
	
l32:	
	line	159
;test_led.c: 159: if(heure > 23)
	movf	(_heure+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_reglage+0+0)
	movlw	(high(018h))^80h
	subwf	(??_reglage+0+0),w
	skipz
	goto	u1025
	movlw	low(018h)
	subwf	(_heure),w
u1025:

	skipc
	goto	u1021
	goto	u1020
u1021:
	goto	l16
u1020:
	
l30001052:	
	line	160
;test_led.c: 160: heure = 0;
	movlw	low(0)
	movwf	(_heure)
	movlw	high(0)
	movwf	((_heure))+1
	
l16:	
	return
	opt stack 0
GLOBAL	__end_of_reglage
	__end_of_reglage:
; =============== function _reglage ends ============

psect	text123,local,class=CODE,delta=2
global __ptext123
__ptext123:
	line	161
	signat	_reglage,88
	global	_affichageHeure

; *************** function _affichageHeure *****************
; Defined at:
;		line 57 in file "H:\MicroControleur\Projet\test_led.c"
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
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       0       0       0       0
;      Temp:     2
;      Total:    2
; This function calls:
;		_lcd_clear
;		_Tempo_us
;		_lcd_home
;		_lcd_putch
;		___awdiv
;		___awmod
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text123
	file	"H:\MicroControleur\Projet\test_led.c"
	line	57
	global	__size_of_affichageHeure
	__size_of_affichageHeure	equ	__end_of_affichageHeure-_affichageHeure
;test_led.c: 56: void affichageHeure(void)
;test_led.c: 57: {
	
_affichageHeure:	
	opt stack 5
; Regs used in _affichageHeure: [wreg+status,2+status,0+pclath+cstack]
	line	59
	
l30001084:	
;test_led.c: 58: static int i = 0;
;test_led.c: 59: lcd_clear();
	fcall	_lcd_clear
	line	60
;test_led.c: 60: Tempo_us(200);
	movlw	low(0C8h)
	movwf	(?_Tempo_us)
	movlw	high(0C8h)
	movwf	((?_Tempo_us))+1
	fcall	_Tempo_us
	line	61
;test_led.c: 61: lcd_home();
	fcall	_lcd_home
	line	62
;test_led.c: 62: Tempo_us(200);
	movlw	low(0C8h)
	movwf	(?_Tempo_us)
	movlw	high(0C8h)
	movwf	((?_Tempo_us))+1
	fcall	_Tempo_us
	
l30001085:	
	line	63
;test_led.c: 63: if((mode == 1) && (i > 2))
	movlw	01h
	xorwf	(_mode),w
	iorwf	(_mode+1),w
	skipz
	goto	u1051
	goto	u1050
u1051:
	goto	l30001088
u1050:
	
l30001086:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(affichageHeure@i+1),w
	xorlw	80h
	movwf	(??_affichageHeure+0+0)
	movlw	(high(03h))^80h
	subwf	(??_affichageHeure+0+0),w
	skipz
	goto	u1065
	movlw	low(03h)
	subwf	(affichageHeure@i),w
u1065:

	skipc
	goto	u1061
	goto	u1060
u1061:
	goto	l30001088
u1060:
	
l30001087:	
	line	65
;test_led.c: 64: {
;test_led.c: 65: lcd_putch(' ');
	movlw	(020h)
	fcall	_lcd_putch
	line	66
;test_led.c: 66: lcd_putch(' ');
	movlw	(020h)
	fcall	_lcd_putch
	goto	l8
	
l30001088:	
	line	70
;test_led.c: 68: else
;test_led.c: 69: {
;test_led.c: 70: lcd_putch((heure / 10) + '0');
	movf	(_heure+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(_heure),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	movlw	low(0Ah)
	movwf	0+(?___awdiv)+02h
	movlw	high(0Ah)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_lcd_putch
	line	71
;test_led.c: 71: lcd_putch((heure % 10) + '0');
	movf	(_heure+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(_heure),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	movlw	low(0Ah)
	movwf	0+(?___awmod)+02h
	movlw	high(0Ah)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_lcd_putch
	
l8:	
	line	73
;test_led.c: 72: }
;test_led.c: 73: lcd_putch(':');
	movlw	(03Ah)
	fcall	_lcd_putch
	
l30001089:	
	line	74
;test_led.c: 74: if((mode == 2) && (i > 2))
	movlw	02h
	xorwf	(_mode),w
	iorwf	(_mode+1),w
	skipz
	goto	u1071
	goto	u1070
u1071:
	goto	l30001092
u1070:
	
l30001090:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(affichageHeure@i+1),w
	xorlw	80h
	movwf	(??_affichageHeure+0+0)
	movlw	(high(03h))^80h
	subwf	(??_affichageHeure+0+0),w
	skipz
	goto	u1085
	movlw	low(03h)
	subwf	(affichageHeure@i),w
u1085:

	skipc
	goto	u1081
	goto	u1080
u1081:
	goto	l30001092
u1080:
	
l30001091:	
	line	76
;test_led.c: 75: {
;test_led.c: 76: lcd_putch(' ');
	movlw	(020h)
	fcall	_lcd_putch
	line	77
;test_led.c: 77: lcd_putch(' ');
	movlw	(020h)
	fcall	_lcd_putch
	goto	l10
	
l30001092:	
	line	81
;test_led.c: 79: else
;test_led.c: 80: {
;test_led.c: 81: lcd_putch((minute / 10) + '0');
	movf	(_minute+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(_minute),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	movlw	low(0Ah)
	movwf	0+(?___awdiv)+02h
	movlw	high(0Ah)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_lcd_putch
	line	82
;test_led.c: 82: lcd_putch((minute % 10) + '0');
	movf	(_minute+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(_minute),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	movlw	low(0Ah)
	movwf	0+(?___awmod)+02h
	movlw	high(0Ah)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_lcd_putch
	
l10:	
	line	84
;test_led.c: 83: }
;test_led.c: 84: lcd_putch(':');
	movlw	(03Ah)
	fcall	_lcd_putch
	line	85
;test_led.c: 85: lcd_putch((seconde / 10) + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_seconde+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(_seconde),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	movlw	low(0Ah)
	movwf	0+(?___awdiv)+02h
	movlw	high(0Ah)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_lcd_putch
	line	86
;test_led.c: 86: lcd_putch((seconde % 10) + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_seconde+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(_seconde),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	movlw	low(0Ah)
	movwf	0+(?___awmod)+02h
	movlw	high(0Ah)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_lcd_putch
	
l30001093:	
	line	88
;test_led.c: 88: i = (i + 1) % 4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(affichageHeure@i),w
	addlw	low(01h)
	movwf	(??_affichageHeure+0+0)
	movf	(affichageHeure@i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(??_affichageHeure+0+0)
	movlw	low(03h)
	andwf	0+(??_affichageHeure+0+0),w
	movwf	(affichageHeure@i)
	movlw	high(03h)
	andwf	1+(??_affichageHeure+0+0),w
	movwf	1+(affichageHeure@i)
	
l6:	
	return
	opt stack 0
GLOBAL	__end_of_affichageHeure
	__end_of_affichageHeure:
; =============== function _affichageHeure ends ============

psect	text124,local,class=CODE,delta=2
global __ptext124
__ptext124:
	line	89
	signat	_affichageHeure,88
	global	_lcd_init

; *************** function _lcd_init *****************
; Defined at:
;		line 17 in file "H:\MicroControleur\Projet\liblcd.c"
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
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_Tempo_us
;		_lcd_write_instr
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text124
	file	"H:\MicroControleur\Projet\liblcd.c"
	line	17
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
;liblcd.c: 16: void lcd_init(void)
;liblcd.c: 17: {
	
_lcd_init:	
	opt stack 5
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l30001078:	
;liblcd.c: 18: RD7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
	
l30001079:	
	line	19
;liblcd.c: 19: Tempo_us(500);
	movlw	low(01F4h)
	movwf	(?_Tempo_us)
	movlw	high(01F4h)
	movwf	((?_Tempo_us))+1
	fcall	_Tempo_us
	
l30001080:	
	line	20
;liblcd.c: 20: RB2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	
l30001081:	
	line	21
;liblcd.c: 21: RD7 = 1;
	bsf	(71/8),(71)&7
	line	22
;liblcd.c: 22: Tempo_us(20000);
	movlw	low(04E20h)
	movwf	(?_Tempo_us)
	movlw	high(04E20h)
	movwf	((?_Tempo_us))+1
	fcall	_Tempo_us
	line	23
;liblcd.c: 23: lcd_write_instr(0x30);
	movlw	(030h)
	fcall	_lcd_write_instr
	line	24
;liblcd.c: 24: Tempo_us(4500);
	movlw	low(01194h)
	movwf	(?_Tempo_us)
	movlw	high(01194h)
	movwf	((?_Tempo_us))+1
	fcall	_Tempo_us
	line	25
;liblcd.c: 25: lcd_write_instr(0x30);
	movlw	(030h)
	fcall	_lcd_write_instr
	line	26
;liblcd.c: 26: Tempo_us(200);
	movlw	low(0C8h)
	movwf	(?_Tempo_us)
	movlw	high(0C8h)
	movwf	((?_Tempo_us))+1
	fcall	_Tempo_us
	line	27
;liblcd.c: 27: lcd_write_instr(0x30);
	movlw	(030h)
	fcall	_lcd_write_instr
	line	28
;liblcd.c: 28: lcd_write_instr(0x20);
	movlw	(020h)
	fcall	_lcd_write_instr
	line	29
;liblcd.c: 29: lcd_write_instr(0x28);
	movlw	(028h)
	fcall	_lcd_write_instr
	line	30
;liblcd.c: 30: lcd_write_instr(0x01);
	movlw	(01h)
	fcall	_lcd_write_instr
	line	31
;liblcd.c: 31: lcd_write_instr(0x0C);
	movlw	(0Ch)
	fcall	_lcd_write_instr
	line	32
;liblcd.c: 32: lcd_write_instr(0x06);
	movlw	(06h)
	fcall	_lcd_write_instr
	line	33
;liblcd.c: 33: lcd_write_instr(0x06);
	movlw	(06h)
	fcall	_lcd_write_instr
	line	34
;liblcd.c: 34: lcd_write_instr(0x0C);
	movlw	(0Ch)
	fcall	_lcd_write_instr
	
l30001082:	
	line	35
;liblcd.c: 35: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	
l50:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
; =============== function _lcd_init ends ============

psect	text125,local,class=CODE,delta=2
global __ptext125
__ptext125:
	line	36
	signat	_lcd_init,88
	global	_init

; *************** function _init *****************
; Defined at:
;		line 13 in file "H:\MicroControleur\Projet\test_led.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text125
	file	"H:\MicroControleur\Projet\test_led.c"
	line	13
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
;test_led.c: 4: asm("\tpsect config,class=CONFIG,delta=2"); asm("\tdw ""0x3FFD&0x3FFB&0x3FFF&0x3FFF&0x3F7F&0x3EFF&0x3FFF&0x37FF&0x1FFF");
;test_led.c: 6: static int seconde;
;test_led.c: 7: static int minute;
;test_led.c: 8: static int heure;
;test_led.c: 9: static int temp;
;test_led.c: 10: static int mode;
;test_led.c: 12: void init(void)
;test_led.c: 13: {
	
_init:	
	opt stack 5
; Regs used in _init: [wreg+status,2+status,0]
	line	14
	
l30001008:	
;test_led.c: 14: INTCON = 0xC4;
	movlw	(0C4h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(11)	;volatile
	line	15
;test_led.c: 15: PIE1 = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(140)^080h	;volatile
	
l30001009:	
	line	16
;test_led.c: 16: PIR1 = 0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(12)	;volatile
	
l30001010:	
	line	17
;test_led.c: 17: T1CON = 0x0F;
	movlw	(0Fh)
	movwf	(16)	;volatile
	
l30001011:	
	line	18
;test_led.c: 18: T2CON = 0x04;
	movlw	(04h)
	movwf	(18)	;volatile
	
l30001012:	
	line	20
;test_led.c: 20: TRISA = 0x1F;
	movlw	(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	
l30001013:	
	line	21
;test_led.c: 21: TRISB = 0x01;
	movlw	(01h)
	movwf	(134)^080h	;volatile
	
l30001014:	
	line	22
;test_led.c: 22: PORTB = 0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	23
;test_led.c: 23: TRISC = 0x02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	
l30001015:	
	line	24
;test_led.c: 24: TRISD = 0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(136)^080h	;volatile
	
l30001016:	
	line	27
;test_led.c: 27: TMR1L = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(14)	;volatile
	
l30001017:	
	line	28
;test_led.c: 28: TMR1H = 0x7F;
	movlw	(07Fh)
	movwf	(15)	;volatile
	
l30001018:	
	line	30
;test_led.c: 30: OPTION = 0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h
	
l30001019:	
	line	32
;test_led.c: 32: seconde = 0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_seconde)
	movlw	high(0)
	movwf	((_seconde))+1
	
l30001020:	
	line	33
;test_led.c: 33: minute = 0;
	movlw	low(0)
	movwf	(_minute)
	movlw	high(0)
	movwf	((_minute))+1
	
l30001021:	
	line	34
;test_led.c: 34: heure = 0;
	movlw	low(0)
	movwf	(_heure)
	movlw	high(0)
	movwf	((_heure))+1
	
l30001022:	
	line	35
;test_led.c: 35: temp = 0;
	movlw	low(0)
	movwf	(_temp)
	movlw	high(0)
	movwf	((_temp))+1
	
l30001023:	
	line	36
;test_led.c: 36: mode = 0;
	movlw	low(0)
	movwf	(_mode)
	movlw	high(0)
	movwf	((_mode))+1
	
l1:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
; =============== function _init ends ============

psect	text126,local,class=CODE,delta=2
global __ptext126
__ptext126:
	line	37
	signat	_init,88
	global	_lcd_clear

; *************** function _lcd_clear *****************
; Defined at:
;		line 108 in file "H:\MicroControleur\Projet\liblcd.c"
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
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_lcd_write_instr
; This function is called by:
;		_affichageHeure
; This function uses a non-reentrant model
; 
psect	text126
	file	"H:\MicroControleur\Projet\liblcd.c"
	line	108
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
;liblcd.c: 107: void lcd_clear(void)
;liblcd.c: 108: {
	
_lcd_clear:	
	opt stack 4
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	109
	
l30001083:	
;liblcd.c: 109: lcd_write_instr(0x01);
	movlw	(01h)
	fcall	_lcd_write_instr
	
l65:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
; =============== function _lcd_clear ends ============

psect	text127,local,class=CODE,delta=2
global __ptext127
__ptext127:
	line	110
	signat	_lcd_clear,88
	global	___awdiv

; *************** function ___awdiv *****************
; Defined at:
;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\awdiv.c"
; Parameters:    Size  Location     Type
;  dividend        2    4[BANK0 ] int 
;  divisor         2    6[BANK0 ] int 
; Auto vars:     Size  Location     Type
;  quotient        2    2[BANK0 ] int 
;  sign            1    1[BANK0 ] unsigned char 
;  counter         1    0[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  2    4[BANK0 ] int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       8       0       0       0
;      Temp:     1
;      Total:    9
; This function calls:
;		Nothing
; This function is called by:
;		_affichageHeure
; This function uses a non-reentrant model
; 
psect	text127
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l30001110:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@sign)
	
l30001111:	
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u1121
	goto	u1120
u1121:
	goto	l30001113
u1120:
	
l30001112:	
	line	11
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	
l30001113:	
	line	14
	btfss	(___awdiv@dividend+1),7
	goto	u1131
	goto	u1130
u1131:
	goto	l218
u1130:
	
l30001114:	
	line	15
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	
l30001115:	
	line	16
	movlw	(01h)
	movwf	(??___awdiv+0+0)
	movf	(??___awdiv+0+0),w
	xorwf	(___awdiv@sign),f
	
l218:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u1141
	goto	u1140
u1141:
	goto	l30001125
u1140:
	
l30001116:	
	line	20
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	goto	l30001119
	
l30001117:	
	line	22
	movlw	01h
u1155:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u1155
	
l30001118:	
	line	23
	movlw	(01h)
	movwf	(??___awdiv+0+0)
	movf	(??___awdiv+0+0),w
	addwf	(___awdiv@counter),f
	
l30001119:	
	line	21
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u1161
	goto	u1160
u1161:
	goto	l30001117
u1160:
	
l30001120:	
	line	26
	movlw	01h
u1175:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u1175
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u1185
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u1185:
	skipc
	goto	u1181
	goto	u1180
u1181:
	goto	l30001123
u1180:
	
l30001121:	
	line	28
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	
l30001122:	
	line	29
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	
l30001123:	
	line	31
	movlw	01h
u1195:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u1195
	
l30001124:	
	line	32
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u1201
	goto	u1200
u1201:
	goto	l30001120
u1200:
	
l30001125:	
	line	34
	movf	(___awdiv@sign),w
	skipz
	goto	u1210
	goto	l30001127
u1210:
	
l30001126:	
	line	35
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l30001127:	
	line	36
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l216:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
; =============== function ___awdiv ends ============

psect	text128,local,class=CODE,delta=2
global __ptext128
__ptext128:
	line	37
	signat	___awdiv,8314
	global	_lcd_putch

; *************** function _lcd_putch *****************
; Defined at:
;		line 72 in file "H:\MicroControleur\Projet\liblcd.c"
; Parameters:    Size  Location     Type
;  c               1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  c               1    1[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       1       0       0       0
;      Temp:     1
;      Total:    2
; This function calls:
;		_lcd_busy
;		_Tempo_us
; This function is called by:
;		_affichageHeure
; This function uses a non-reentrant model
; 
psect	text128
	file	"H:\MicroControleur\Projet\liblcd.c"
	line	72
	global	__size_of_lcd_putch
	__size_of_lcd_putch	equ	__end_of_lcd_putch-_lcd_putch
;liblcd.c: 71: void lcd_putch(unsigned char c)
;liblcd.c: 72: {
	
_lcd_putch:	
	opt stack 4
; Regs used in _lcd_putch: [wreg+status,2+status,0+pclath+cstack]
;lcd_putch@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_putch@c)
	
l30001095:	
	line	73
;liblcd.c: 73: lcd_busy();
	fcall	_lcd_busy
	
l30001096:	
	line	74
;liblcd.c: 74: RD6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
	
l30001097:	
	line	75
;liblcd.c: 75: PORTD = 0x90 | ((c >> 4) & 0x0F);
	movf	(lcd_putch@c),w
	movwf	(??_lcd_putch+0+0)
	movlw	04h
u1095:
	clrc
	rrf	(??_lcd_putch+0+0),f
	addlw	-1
	skipz
	goto	u1095
	movf	0+(??_lcd_putch+0+0),w
	andlw	0Fh
	iorlw	090h
	movwf	(8)	;volatile
	
l30001098:	
	line	76
;liblcd.c: 76: RD6 = 1;
	bsf	(70/8),(70)&7
	
l30001099:	
	line	77
;liblcd.c: 77: Tempo_us(5);
	movlw	low(05h)
	movwf	(?_Tempo_us)
	movlw	high(05h)
	movwf	((?_Tempo_us))+1
	fcall	_Tempo_us
	
l30001100:	
	line	78
;liblcd.c: 78: RD6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
	
l30001101:	
	line	79
;liblcd.c: 79: PORTD = 0x90 | (c & 0x0F);
	movf	(lcd_putch@c),w
	andlw	0Fh
	iorlw	090h
	movwf	(8)	;volatile
	
l30001102:	
	line	80
;liblcd.c: 80: RD6 = 1;
	bsf	(70/8),(70)&7
	
l30001103:	
	line	81
;liblcd.c: 81: Tempo_us(5);
	movlw	low(05h)
	movwf	(?_Tempo_us)
	movlw	high(05h)
	movwf	((?_Tempo_us))+1
	fcall	_Tempo_us
	
l30001104:	
	line	82
;liblcd.c: 82: RD6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
	
l56:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putch
	__end_of_lcd_putch:
; =============== function _lcd_putch ends ============

psect	text129,local,class=CODE,delta=2
global __ptext129
__ptext129:
	line	83
	signat	_lcd_putch,4216
	global	_lcd_home

; *************** function _lcd_home *****************
; Defined at:
;		line 113 in file "H:\MicroControleur\Projet\liblcd.c"
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
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_lcd_write_instr
; This function is called by:
;		_affichageHeure
; This function uses a non-reentrant model
; 
psect	text129
	file	"H:\MicroControleur\Projet\liblcd.c"
	line	113
	global	__size_of_lcd_home
	__size_of_lcd_home	equ	__end_of_lcd_home-_lcd_home
;liblcd.c: 112: void lcd_home(void)
;liblcd.c: 113: {
	
_lcd_home:	
	opt stack 4
; Regs used in _lcd_home: [wreg+status,2+status,0+pclath+cstack]
	line	114
	
l30001094:	
;liblcd.c: 114: lcd_write_instr(0x02);
	movlw	(02h)
	fcall	_lcd_write_instr
	
l66:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_home
	__end_of_lcd_home:
; =============== function _lcd_home ends ============

psect	text130,local,class=CODE,delta=2
global __ptext130
__ptext130:
	line	115
	signat	_lcd_home,88
	global	___awmod

; *************** function ___awmod *****************
; Defined at:
;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\awmod.c"
; Parameters:    Size  Location     Type
;  dividend        2    0[BANK0 ] int 
;  divisor         2    2[BANK0 ] int 
; Auto vars:     Size  Location     Type
;  sign            1    1[COMMON] unsigned char 
;  counter         1    2[COMMON] unsigned char 
; Return value:  Size  Location     Type
;                  2    0[BANK0 ] int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         3       4       0       0       0
;      Temp:     1
;      Total:    7
; This function calls:
;		Nothing
; This function is called by:
;		_affichageHeure
;		_reglage
; This function uses a non-reentrant model
; 
psect	text130
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt stack 4
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l30000881:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	
l30000882:	
	line	9
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___awmod@dividend+1),7
	goto	u461
	goto	u460
u461:
	goto	l30000884
u460:
	
l30000883:	
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
	
l30000884:	
	line	13
	btfss	(___awmod@divisor+1),7
	goto	u471
	goto	u470
u471:
	goto	l30000886
u470:
	
l30000885:	
	line	14
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l30000886:	
	line	15
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u481
	goto	u480
u481:
	goto	l30000895
u480:
	
l30000887:	
	line	16
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	goto	l30000890
	
l30000888:	
	line	18
	movlw	01h
u495:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u495
	
l30000889:	
	line	19
	movlw	(01h)
	movwf	(??___awmod+0+0)
	movf	(??___awmod+0+0),w
	addwf	(___awmod@counter),f
	
l30000890:	
	line	17
	btfss	(___awmod@divisor+1),(15)&7
	goto	u501
	goto	u500
u501:
	goto	l30000888
u500:
	
l30000891:	
	line	22
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u515
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u515:
	skipc
	goto	u511
	goto	u510
u511:
	goto	l30000893
u510:
	
l30000892:	
	line	23
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l30000893:	
	line	24
	movlw	01h
u525:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u525
	
l30000894:	
	line	25
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u531
	goto	u530
u531:
	goto	l30000891
u530:
	
l30000895:	
	line	27
	movf	(___awmod@sign),w
	skipz
	goto	u540
	goto	l30000897
u540:
	
l30000896:	
	line	28
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l30000897:	
	line	29
	
l296:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
; =============== function ___awmod ends ============

psect	text131,local,class=CODE,delta=2
global __ptext131
__ptext131:
	line	30
	signat	___awmod,8314
	global	_lcd_write_instr

; *************** function _lcd_write_instr *****************
; Defined at:
;		line 58 in file "H:\MicroControleur\Projet\liblcd.c"
; Parameters:    Size  Location     Type
;  c               1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  c               1    1[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       1       0       0       0
;      Temp:     1
;      Total:    2
; This function calls:
;		_lcd_busy
;		_Tempo_us
; This function is called by:
;		_lcd_init
;		_lcd_clear
;		_lcd_home
; This function uses a non-reentrant model
; 
psect	text131
	file	"H:\MicroControleur\Projet\liblcd.c"
	line	58
	global	__size_of_lcd_write_instr
	__size_of_lcd_write_instr	equ	__end_of_lcd_write_instr-_lcd_write_instr
;liblcd.c: 57: void lcd_write_instr(unsigned char c)
;liblcd.c: 58: {
	
_lcd_write_instr:	
	opt stack 3
; Regs used in _lcd_write_instr: [wreg+status,2+status,0+pclath+cstack]
;lcd_write_instr@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_write_instr@c)
	
l30001068:	
	line	59
;liblcd.c: 59: lcd_busy();
	fcall	_lcd_busy
	
l30001069:	
	line	60
;liblcd.c: 60: RD6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
	
l30001070:	
	line	61
;liblcd.c: 61: PORTD = 0x80 | ((c >> 4) & 0x0F);
	movf	(lcd_write_instr@c),w
	movwf	(??_lcd_write_instr+0+0)
	movlw	04h
u1045:
	clrc
	rrf	(??_lcd_write_instr+0+0),f
	addlw	-1
	skipz
	goto	u1045
	movf	0+(??_lcd_write_instr+0+0),w
	andlw	0Fh
	iorlw	080h
	movwf	(8)	;volatile
	
l30001071:	
	line	62
;liblcd.c: 62: RD6 = 1;
	bsf	(70/8),(70)&7
	
l30001072:	
	line	63
;liblcd.c: 63: Tempo_us(5);
	movlw	low(05h)
	movwf	(?_Tempo_us)
	movlw	high(05h)
	movwf	((?_Tempo_us))+1
	fcall	_Tempo_us
	
l30001073:	
	line	64
;liblcd.c: 64: RD6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
	
l30001074:	
	line	65
;liblcd.c: 65: PORTD = 0x80 | (c & 0x0F);
	movf	(lcd_write_instr@c),w
	andlw	0Fh
	iorlw	080h
	movwf	(8)	;volatile
	
l30001075:	
	line	66
;liblcd.c: 66: RD6 = 1;
	bsf	(70/8),(70)&7
	
l30001076:	
	line	67
;liblcd.c: 67: Tempo_us(5);
	movlw	low(05h)
	movwf	(?_Tempo_us)
	movlw	high(05h)
	movwf	((?_Tempo_us))+1
	fcall	_Tempo_us
	
l30001077:	
	line	68
;liblcd.c: 68: RD6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
	
l55:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write_instr
	__end_of_lcd_write_instr:
; =============== function _lcd_write_instr ends ============

psect	text132,local,class=CODE,delta=2
global __ptext132
__ptext132:
	line	69
	signat	_lcd_write_instr,4216
	global	_lcd_busy

; *************** function _lcd_busy *****************
; Defined at:
;		line 39 in file "H:\MicroControleur\Projet\liblcd.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  c               1    0[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       1       0       0       0
;      Temp:     0
;      Total:    1
; This function calls:
;		_Tempo_us
; This function is called by:
;		_lcd_write_instr
;		_lcd_putch
; This function uses a non-reentrant model
; 
psect	text132
	file	"H:\MicroControleur\Projet\liblcd.c"
	line	39
	global	__size_of_lcd_busy
	__size_of_lcd_busy	equ	__end_of_lcd_busy-_lcd_busy
;liblcd.c: 38: void lcd_busy(void)
;liblcd.c: 39: {
	
_lcd_busy:	
	opt stack 2
; Regs used in _lcd_busy: [wreg+status,2+status,0+pclath+cstack]
	line	41
	
l30001057:	
;liblcd.c: 40: char c;
;liblcd.c: 41: RB3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	
l30001058:	
	line	42
;liblcd.c: 42: TRISD = 0x08;
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	
l30001059:	
	line	43
;liblcd.c: 43: RD4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
	
l30001060:	
	line	44
;liblcd.c: 44: RD5 = 1;
	bsf	(69/8),(69)&7
	
l30001061:	
	line	47
;liblcd.c: 46: {
;liblcd.c: 47: RD6 = 1;
	bsf	(70/8),(70)&7
	
l30001062:	
	line	48
;liblcd.c: 48: Tempo_us(5);
	movlw	low(05h)
	movwf	(?_Tempo_us)
	movlw	high(05h)
	movwf	((?_Tempo_us))+1
	fcall	_Tempo_us
	
l30001063:	
	line	49
;liblcd.c: 49: c = PORTD;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	movwf	(lcd_busy@c)
	
l30001064:	
	line	50
;liblcd.c: 50: RD6 = 0;
	bcf	(70/8),(70)&7
	line	51
;liblcd.c: 51: Tempo_us(5);
	movlw	low(05h)
	movwf	(?_Tempo_us)
	movlw	high(05h)
	movwf	((?_Tempo_us))+1
	fcall	_Tempo_us
	
l30001065:	
	line	52
;liblcd.c: 52: }while((c & 0x08) == 0x08);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(lcd_busy@c),(3)&7
	goto	u1031
	goto	u1030
u1031:
	goto	l30001061
u1030:
	
l30001066:	
	line	53
;liblcd.c: 53: TRISD = 0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	
l30001067:	
	line	54
;liblcd.c: 54: RB3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	
l51:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_busy
	__end_of_lcd_busy:
; =============== function _lcd_busy ends ============

psect	text133,local,class=CODE,delta=2
global __ptext133
__ptext133:
	line	55
	signat	_lcd_busy,88
	global	_Tempo_us

; *************** function _Tempo_us *****************
; Defined at:
;		line 5 in file "H:\MicroControleur\Projet\liblcd.c"
; Parameters:    Size  Location     Type
;  nb_us           2    0[COMMON] unsigned short 
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       0       0       0       0
;      Temp:     0
;      Total:    2
; This function calls:
;		Nothing
; This function is called by:
;		_affichageHeure
;		_reglage
;		_main
;		_lcd_init
;		_lcd_busy
;		_lcd_write_instr
;		_lcd_putch
; This function uses a non-reentrant model
; 
psect	text133
	file	"H:\MicroControleur\Projet\liblcd.c"
	line	5
	global	__size_of_Tempo_us
	__size_of_Tempo_us	equ	__end_of_Tempo_us-_Tempo_us
;liblcd.c: 4: void Tempo_us(unsigned short nb_us)
;liblcd.c: 5: {
	
_Tempo_us:	
	opt stack 1
; Regs used in _Tempo_us: [wreg+status,2+status,0]
	line	6
	
l30001105:	
;liblcd.c: 6: PR2 = 0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	
l30001106:	
	line	7
;liblcd.c: 7: for(;nb_us > 0;nb_us--)
	movf	((Tempo_us@nb_us+1)),w
	iorwf	((Tempo_us@nb_us)),w
	skipz
	goto	u1101
	goto	u1100
u1101:
	goto	l47
u1100:
	goto	l43
	
l47:	
	line	9
	bcf	status, 5	;RP0=0, select bank0
	btfss	(97/8),(97)&7
	goto	u1111
	goto	u1110
u1111:
	goto	l47
u1110:
	
l49:	
	line	10
;liblcd.c: 10: TMR2IF = 0;
	bcf	(97/8),(97)&7
	
l30001108:	
	line	7
	movlw	low(01h)
	subwf	(Tempo_us@nb_us),f
	movlw	high(01h)
	skipc
	decf	(Tempo_us@nb_us+1),f
	subwf	(Tempo_us@nb_us+1),f
	goto	l30001106
	
l43:	
	return
	opt stack 0
GLOBAL	__end_of_Tempo_us
	__end_of_Tempo_us:
; =============== function _Tempo_us ends ============

psect	text134,local,class=CODE,delta=2
global __ptext134
__ptext134:
	line	14
	signat	_Tempo_us,4216
	global	_timer

; *************** function _timer *****************
; Defined at:
;		line 186 in file "H:\MicroControleur\Projet\test_led.c"
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
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       4       0       0       0
;      Temp:     4
;      Total:    4
; This function calls:
;		_heartBeat
;		_horloge
; This function is called by:
;		Interrupt level 1
; This function uses a non-reentrant model
; 
psect	text134
	file	"H:\MicroControleur\Projet\test_led.c"
	line	186
	global	__size_of_timer
	__size_of_timer	equ	__end_of_timer-_timer
;test_led.c: 185: void interrupt timer(void)
;test_led.c: 186: {
	
_timer:	
	opt stack 3
; Regs used in _timer: [wreg+status,2+status,0+pclath+cstack]
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
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_timer+0)
	movf	fsr0,w
	movwf	(??_timer+1)
	movf	pclath,w
	movwf	(??_timer+2)
	movf	btemp+0,w
	movwf	(??_timer+3)
	ljmp	_timer
psect	text134
	line	187
	
i1l30000957:	
;test_led.c: 187: if(TMR1IF == 1)
	btfss	(96/8),(96)&7
	goto	u84_21
	goto	u84_20
u84_21:
	goto	i1l30000961
u84_20:
	
i1l30000958:	
	line	189
;test_led.c: 188: {
;test_led.c: 189: TMR1L = 0xFF;
	movlw	(0FFh)
	movwf	(14)	;volatile
	line	190
;test_led.c: 190: TMR1H = 0x7F;
	movlw	(07Fh)
	movwf	(15)	;volatile
	
i1l30000959:	
	line	191
;test_led.c: 191: heartBeat();
	fcall	_heartBeat
	
i1l30000960:	
	line	192
;test_led.c: 192: horloge();
	fcall	_horloge
	line	193
;test_led.c: 193: temp++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_temp),f
	skipnc
	incf	(_temp+1),f
	movlw	high(01h)
	addwf	(_temp+1),f
	
i1l30000961:	
	line	195
;test_led.c: 194: }
;test_led.c: 195: TMR1IF = 0;
	bcf	(96/8),(96)&7
	
i1l41:	
	movf	(??_timer+3),w
	movwf	btemp+0
	movf	(??_timer+2),w
	movwf	pclath
	movf	(??_timer+1),w
	movwf	fsr0
	movf	(??_timer+0),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_timer
	__end_of_timer:
; =============== function _timer ends ============

psect	text135,local,class=CODE,delta=2
global __ptext135
__ptext135:
	line	196
	signat	_timer,88
	global	_horloge

; *************** function _horloge *****************
; Defined at:
;		line 40 in file "H:\MicroControleur\Projet\test_led.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       1       0       0       0
;      Temp:     1
;      Total:    1
; This function calls:
;		Nothing
; This function is called by:
;		_timer
; This function uses a non-reentrant model
; 
psect	text135
	file	"H:\MicroControleur\Projet\test_led.c"
	line	40
	global	__size_of_horloge
	__size_of_horloge	equ	__end_of_horloge-_horloge
;test_led.c: 39: void horloge(void)
;test_led.c: 40: {
	
_horloge:	
	opt stack 2
; Regs used in _horloge: [wreg]
	line	41
	
i1l30000953:	
;test_led.c: 41: seconde++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_seconde),f
	skipnc
	incf	(_seconde+1),f
	movlw	high(01h)
	addwf	(_seconde+1),f
	line	42
;test_led.c: 42: if(seconde > 59)
	movf	(_seconde+1),w
	xorlw	80h
	movwf	(??_horloge+0+0)
	movlw	(high(03Ch))^80h
	subwf	(??_horloge+0+0),w
	skipz
	goto	u81_25
	movlw	low(03Ch)
	subwf	(_seconde),w
u81_25:

	skipc
	goto	u81_21
	goto	u81_20
u81_21:
	goto	i1l2
u81_20:
	
i1l30000954:	
	line	44
;test_led.c: 43: {
;test_led.c: 44: seconde = 0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_seconde)
	movlw	high(0)
	movwf	((_seconde))+1
	line	45
;test_led.c: 45: minute++;
	movlw	low(01h)
	addwf	(_minute),f
	skipnc
	incf	(_minute+1),f
	movlw	high(01h)
	addwf	(_minute+1),f
	line	46
;test_led.c: 46: if(minute > 59)
	movf	(_minute+1),w
	xorlw	80h
	movwf	(??_horloge+0+0)
	movlw	(high(03Ch))^80h
	subwf	(??_horloge+0+0),w
	skipz
	goto	u82_25
	movlw	low(03Ch)
	subwf	(_minute),w
u82_25:

	skipc
	goto	u82_21
	goto	u82_20
u82_21:
	goto	i1l2
u82_20:
	
i1l30000955:	
	line	48
;test_led.c: 47: {
;test_led.c: 48: minute = 0;
	movlw	low(0)
	movwf	(_minute)
	movlw	high(0)
	movwf	((_minute))+1
	line	49
;test_led.c: 49: heure++;
	movlw	low(01h)
	addwf	(_heure),f
	skipnc
	incf	(_heure+1),f
	movlw	high(01h)
	addwf	(_heure+1),f
	line	50
;test_led.c: 50: if(heure > 23)
	movf	(_heure+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_horloge+0+0)
	movlw	(high(018h))^80h
	subwf	(??_horloge+0+0),w
	skipz
	goto	u83_25
	movlw	low(018h)
	subwf	(_heure),w
u83_25:

	skipc
	goto	u83_21
	goto	u83_20
u83_21:
	goto	i1l2
u83_20:
	
i1l30000956:	
	line	51
;test_led.c: 51: heure = 0;
	movlw	low(0)
	movwf	(_heure)
	movlw	high(0)
	movwf	((_heure))+1
	
i1l2:	
	return
	opt stack 0
GLOBAL	__end_of_horloge
	__end_of_horloge:
; =============== function _horloge ends ============

psect	text136,local,class=CODE,delta=2
global __ptext136
__ptext136:
	line	54
	signat	_horloge,88
	global	_heartBeat

; *************** function _heartBeat *****************
; Defined at:
;		line 177 in file "H:\MicroControleur\Projet\test_led.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       2       0       0       0
;      Temp:     2
;      Total:    2
; This function calls:
;		Nothing
; This function is called by:
;		_timer
; This function uses a non-reentrant model
; 
psect	text136
	file	"H:\MicroControleur\Projet\test_led.c"
	line	177
	global	__size_of_heartBeat
	__size_of_heartBeat	equ	__end_of_heartBeat-_heartBeat
;test_led.c: 176: void heartBeat(void)
;test_led.c: 177: {
	
_heartBeat:	
	opt stack 2
; Regs used in _heartBeat: [wreg+status,2+status,0]
	line	179
	
i1l30000962:	
;test_led.c: 178: static unsigned short n = 0;
;test_led.c: 179: if(n == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((heartBeat@n+1)),w
	iorwf	((heartBeat@n)),w
	skipz
	goto	u85_21
	goto	u85_20
u85_21:
	goto	i1l39
u85_20:
	
i1l30000963:	
	line	180
;test_led.c: 180: RB1 = 1;
	bsf	(49/8),(49)&7
	goto	i1l30000964
	
i1l39:	
	line	181
;test_led.c: 181: else RB1 = 0;
	bcf	(49/8),(49)&7
	
i1l30000964:	
	line	182
;test_led.c: 182: n = (n + 1) % 2;
	movf	(heartBeat@n),w
	addlw	low(01h)
	movwf	(??_heartBeat+0+0)
	movf	(heartBeat@n+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(??_heartBeat+0+0)
	movlw	low(01h)
	andwf	0+(??_heartBeat+0+0),w
	movwf	(heartBeat@n)
	movlw	high(01h)
	andwf	1+(??_heartBeat+0+0),w
	movwf	1+(heartBeat@n)
	
i1l38:	
	return
	opt stack 0
GLOBAL	__end_of_heartBeat
	__end_of_heartBeat:
; =============== function _heartBeat ends ============

psect	text137,local,class=CODE,delta=2
global __ptext137
__ptext137:
	line	183
	signat	_heartBeat,88
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
