

	LIST      p=16F84            ; Définition de processeur
	#include <p16F84.inc>        ; Définitions de variables

	__CONFIG   _CP_OFF & _WDT_OFF & _PWRTE_ON & _HS_OSC

; '__CONFIG' précise les paramètres encodés dans le processeur au moment de
; la programmation du processeur. Les définitions sont dans le fichier include.
; Voici les valeurs et leurs définitions :

;	_CP_ON		Code protection ON : impossible de relire
;	_CP_OFF		Code protection OFF
;	_PWRTE_ON	Timer reset sur power on en service
;	_PWRTE_OFF	Timer reset hors-service
;	_WDT_ON		Watch-dog en service
;	_WDT_OFF	Watch-dog hors service
;	_LP_OSC		Oscillateur quartz basse vitesse
;	_XT_OSC		Oscillateur quartz moyenne vitesse
;	_HS_OSC		Oscillateur quartz grande vitesse
;	_RC_OSC		Oscillateur à réseau RC

;*********************************************************************
;                              ASSIGNATIONS                          *
;*********************************************************************


TRISA_VAL	EQU	0x00	; Valeur à charger dans registre TRISA 
TRISB_VAL	EQU	0x01	; Valeur à charger dans registre TRISB 
INIT_PORTA	EQU	0xFE	; Valeur initiale à charger dans registre PORTA 
INIT_PORTB	EQU	0x00	; Valeur initiale à charger dans registre PORTB 
;*********************************************************************
;                             DEFINE                                 *
;*********************************************************************

#DEFINE BOUTON	PORTB,0		; bouton-poussoir

;*********************************************************************
;                             MACRO                                  *
;*********************************************************************

BANK0	macro			; défini une macro "BANK0"
	bcf	STATUS , RP0	; passer banque0
	endm				; fin de la macro

BANK1	macro
	bsf	STATUS , RP0	; passer banque1
	endm

;**********************************************************************
;                      DEMARRAGE SUR RESET                            *
;**********************************************************************

reset	code 0x000 		; section de code "reset" en 0x000 impérative pour le démarrage
  	goto    start	

;*********************************************************************
;                       INITIALISATIONS                              *
;*********************************************************************

prog	code 		; section de code "prog"
init
	
    BANK1			
	movlw TRISA_VAL	
	movwf TRISA		
	movlw TRISB_VAL
	movwf TRISB		
	BANK0			
	movlw INIT_PORTA
	movwf PORTA
	movlw INIT_PORTB
	movwf PORTB
	return		
		
;*********************************************************************
;                      PROGRAMME PRINCIPAL                           *
;*********************************************************************

	extern tempo	; importe le symbole "tempo" (étiquette exportée par tempo.asm)

start
	extern copy_init_data
	call copy_init_data
	call init

boucle

	bsf STATUS, C
	movlw 0xFF
	btfss PORTA, 4
	bcf STATUS, C
	btfss PORTA, 4
	movwf PORTA		
	
	rlf PORTA, f

	call tempo

	goto boucle


	END 			; directive fin de programme

