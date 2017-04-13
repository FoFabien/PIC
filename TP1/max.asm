

	LIST      p=16F84            ; Définition du processeur utilisé
	#include <p16F84.inc>        ; Définitions de variables

	__CONFIG   0x3FF2			; défini logiciellement la valeur 
								; (???? à préciser !) qui sera chargée  
								; à la programmation dans le registre CONFIG

;*********************************************************************
;                   DECLARATIONS DE VARIABLES                        *
;*********************************************************************

	CBLOCK 0x00C   	; début de la zone de variables (pour exemple)

	VAR : 1			; déclare une variable "VAR" de 1 octet (adresse 0x00C)
	TABLEAU : 10	; réserve une zone mémoire de 10 octets (0x00D - 0x017)
					; (TABLEAU est le 1er élément)
    ENDC			; Fin de la zone   
;**********************************************************************
;                      DEMARRAGE SUR RESET                            *
;**********************************************************************

	org 0x000 		; fixe l'adresse d'implantation (mémoire programme) 
 					; du bloc d'instructions qui suit
reset
	goto start

;*********************************************************************
;                       INITIALISATION                               *
;*********************************************************************
init
	BCF STATUS,RP0

	movlw TABLEAU
	movwf FSR

	movf INDF, 0
	movwf VAR

	return
;*********************************************************************
;                      PROGRAMME PRINCIPAL                           *
;*********************************************************************

start
	call init
boucle
	incf FSR, 1 
	movf VAR, w
	subwf INDF, w

	btfsc STATUS, C
	movf INDF, w

	btfsc STATUS, C
	movwf VAR

	movlw 0x16
	subwf FSR, 0
	btfss STATUS, Z
	goto boucle	
	END 			; directive fin de programme

