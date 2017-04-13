

	LIST      p=16F84            ; D�finition du processeur utilis�
	#include <p16F84.inc>        ; D�finitions de variables

	__CONFIG   0x3FF2			; d�fini logiciellement la valeur 
								; (???? � pr�ciser !) qui sera charg�e  
								; � la programmation dans le registre CONFIG

;*********************************************************************
;                   DECLARATIONS DE VARIABLES                        *
;*********************************************************************

	CBLOCK 0x00C   	; d�but de la zone de variables (pour exemple)

	VAR : 1			; d�clare une variable "VAR" de 1 octet (adresse 0x00C)
	TABLEAU : 10	; r�serve une zone m�moire de 10 octets (0x00D - 0x017)
					; (TABLEAU est le 1er �l�ment)
    ENDC			; Fin de la zone   
;**********************************************************************
;                      DEMARRAGE SUR RESET                            *
;**********************************************************************

	org 0x000 		; fixe l'adresse d'implantation (m�moire programme) 
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

