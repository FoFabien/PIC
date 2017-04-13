

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

;*********************************************************************
;                           SECTIONS DE DONNEES                      *
;*********************************************************************

	CBLOCK 0x00C   	; début de la zone de variables

cmpt : 1
status_temp	: 1				; réserve 1 octet 
w_temp	: 1					; réserve 1 octet 

	ENDC

;**********************************************************************
;                      DEMARRAGE SUR RESET                            *
;**********************************************************************

	org 0x000 		; adresse pour la routine au démarrage
  	goto start	

;**********************************************************************
;                     ROUTINE INTERRUPTION                            *
;**********************************************************************

	org 0x004		; adresse routine d'interruption (imposée)

routine_IT
			;sauvegarder registres	
			;---------------------

	movwf   w_temp  	; sauver registre W
	swapf	STATUS,w	; swap status avec résultat dans w
	movwf	status_temp	; sauver status swappé

			;traitement de l'interruption	
			;----------------------------
	bcf INTCON, T0IF

	decfsz cmpt, 1
	goto restorereg

	movlw 0xFF
	btfss PORTA, 4
	bcf STATUS, C
	btfss PORTA, 4
	movwf PORTA		

	movlw 0x08
	movwf cmpt
	
	rlf PORTA, f

			;restaurer registres
			;-------------------

restorereg
	swapf	status_temp,w	; swap ancien status, résultat dans w
	movwf   STATUS		; restaurer status
	swapf   w_temp,f	; Inversion L et H de l'ancien W
                       		; sans modifier Z
	swapf   w_temp,w  	; Réinversion de L et H dans W
				; W restauré sans modifier status

	retfie  		; return from interrupt

;*********************************************************************
;                       INITIALISATIONS                              *
;*********************************************************************

init
	
    BANK1			
	movlw	TRISA_VAL	
	movwf	TRISA		
	movlw	TRISB_VAL
	movwf	TRISB
	movlw 0x07 
	movwf OPTION_REG		
	BANK0			
	movlw INIT_PORTA
	movwf PORTA
	movlw INIT_PORTB
	movwf PORTB

	movlw 0xA0
	movwf INTCON

	movlw 0x08
	movwf cmpt

	bsf STATUS, C

	return		

;*********************************************************************
;                      PROGRAMME PRINCIPAL                           *
;*********************************************************************

start
	call init

boucle
	BTFSS PORTB,0 ; si RB0 est a 0 (appuyé)
	MOVLW 0x60 ; affichage de 1 

	BTFSC PORTB,0 ; si RB0 est à 1 (relaché)
	MOVLW 0xFC ; affichage de 0

	MOVWF PORTB

	goto boucle

	END 			; directive fin de programme
