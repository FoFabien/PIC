

	LIST      p=16F84            ; Définition de processeur
	#include <p16F84.inc>        ; Définitions de variables

	__CONFIG   _CP_OFF & _WDT_OFF & _PWRTE_ON & _HS_OSC

; '__CONFIG' précise les paramètres encodés dans le processeur au moment de
; sa programmation. Les définitions sont dans le fichier include.
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
INIT_PORTA	EQU	0x00	; Valeur initiale à charger dans registre PORTA 
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
;                   DECLARATIONS DE VARIABLES                        *
;*********************************************************************

	CBLOCK 0x00C   	; début de la zone de variables (pour exemple)

	VAR : 1			; déclare une variable "VAR" de 1 octet (adresse 0x00C)
	TABLEAU : 10	; réserve une zone mémoire de 10 octets (0x00D - 0x017)
					; (TABLEAU est le 1er élément)
	cmpt1 : 1		; compteur de boucles 1
	cmpt2 : 1		; compteur de boucles 2
	cmpt3 : 1		; compteur de boucles 3

    ENDC			; Fin de la zone                        

;**********************************************************************
;                      DEMARRAGE SUR RESET                            *
;**********************************************************************

	org 0x000 		; fixe l'adresse d'implantation en mémoire programme
					; de l'instruction qui suit
reset			
  	goto    start		

;*********************************************************************
;                       INITIALISATIONS                              *
;*********************************************************************

init
	
    BANK1			
	movlw	TRISA_VAL	
	movwf	TRISA		
	movlw	TRISB_VAL
	movwf	TRISB		
	BANK0			
	movlw INIT_PORTA
	movwf PORTA
	movlw INIT_PORTB
	movwf PORTB
	return		

;*********************************************************************
;                   SOUS-PROGRAMME DE TEMPORISATION                  *
;*********************************************************************

tempo
	movlw	2		
	movwf	cmpt3		
boucle3
	clrf	cmpt2		
boucle2
	clrf	cmpt1		
boucle1
	nop			
	decfsz	cmpt1 , f	
	goto	boucle1	
	decfsz	cmpt2 , f
	goto	boucle2		
	decfsz	cmpt3 , f	
	goto	boucle3		
	return	
		
;*********************************************************************
;                      PROGRAMME PRINCIPAL                           *
;*********************************************************************

start
	call init
boucle
	movlw 0x1E
	movwf PORTA
	call tempo

	movlw 0x1D
	movwf PORTA
	call tempo

	movlw 0x1B
	movwf PORTA
	call tempo

	movlw 0x17
	movwf PORTA
	call tempo

	movlw 0x0F
	movwf PORTA
	call tempo

goto boucle

	END 			; directive fin de programme

