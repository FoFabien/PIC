

	LIST      p=16F84            ; D�finition de processeur
	#include <p16F84.inc>        ; D�finitions de variables

	__CONFIG   _CP_OFF & _WDT_ON & _PWRTE_ON & _HS_OSC

; '__CONFIG' pr�cise les param�tres encod�s dans le processeur au moment de
; sa programmation. Les d�finitions sont dans le fichier include.
; Voici les valeurs et leurs d�finitions :

;	_CP_ON		Code protection ON : impossible de relire
;	_CP_OFF		Code protection OFF
;	_PWRTE_ON	Timer reset sur power on en service
;	_PWRTE_OFF	Timer reset hors-service
;	_WDT_ON		Watch-dog en service
;	_WDT_OFF	Watch-dog hors service
;	_LP_OSC		Oscillateur quartz basse vitesse
;	_XT_OSC		Oscillateur quartz moyenne vitesse
;	_HS_OSC		Oscillateur quartz grande vitesse
;	_RC_OSC		Oscillateur � r�seau RC

;*********************************************************************
;                              ASSIGNATIONS                          *
;*********************************************************************

TRISA_VAL	EQU	0x00	; Valeur � charger dans registre TRISA 
TRISB_VAL	EQU	0x01	; Valeur � charger dans registre TRISB 
INIT_PORTA	EQU	0xFF	; Valeur initiale � charger dans registre PORTA 
INIT_PORTB	EQU	0x00	; Valeur initiale � charger dans registre PORTB 

;*********************************************************************
;                             DEFINE                                 *
;*********************************************************************

#DEFINE BOUTON	PORTB,0		; bouton-poussoir

;*********************************************************************
;                             MACRO                                  *
;*********************************************************************

BANK0	macro			; d�fini une macro "BANK0"
	bcf	STATUS , RP0	; passer banque0
	endm				; fin de la macro

BANK1	macro
	bsf	STATUS , RP0	; passer banque1
	endm

;*********************************************************************
;                   DECLARATIONS DE VARIABLES                        *
;*********************************************************************

	CBLOCK 0x00C   	; d�but de la zone de variables (pour exemple)

	VAR : 1			; d�clare une variable "VAR" de 1 octet (adresse 0x00C)
	TABLEAU : 10	; r�serve une zone m�moire de 10 octets (0x00D - 0x017)
					; (TABLEAU est le 1er �l�ment)
	cmpt : 1
	cmpt1 : 1		; compteur de boucles 1
	cmpt2 : 1		; compteur de boucles 2
	cmpt3 : 1		; compteur de boucles 3

    ENDC			; Fin de la zone                        

;**********************************************************************
;                      DEMARRAGE SUR RESET                            *
;**********************************************************************

	org 0x000 		; fixe l'adresse d'implantation en m�moire programme
					; de l'instruction qui suit
reset			
  	goto start		

;*********************************************************************
;                       INITIALISATIONS                              *
;*********************************************************************

init
	
    BANK1			
	movlw TRISA_VAL	
	movwf TRISA		
	movlw TRISB_VAL
	movwf TRISB	
	movlw 0x0D
	movwf OPTION_REG	
	BANK0			
	movlw INIT_PORTA
	movwf PORTA
	movlw INIT_PORTB
	movwf PORTB
	return		
	
;*********************************************************************
;                      PROGRAMME PRINCIPAL                           *
;*********************************************************************

start
	call init

boucle

	movlw 0x1E
	movwf PORTA
	sleep

	movlw 0x1D
	movwf PORTA
	sleep

	movlw 0x1B
	movwf PORTA
	sleep

	movlw 0x17
	movwf PORTA
	sleep

	movlw 0x0F
	movwf PORTA
	sleep

	goto boucle

	END 			; directive fin de programme

