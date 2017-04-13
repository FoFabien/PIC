

	LIST      p=16F84            ; Définition du processeur utilisé
	#include <p16F84.inc>        ; Définitions de variables

	__CONFIG   0x3FF2			; défini logiciellement la valeur 
								; (???? à préciser !) qui sera chargée  
								; à la programmation dans le registre CONFIG


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
	BSF STATUS,RP0 ; rpo a 1 pour banque 1
	BCF OPTION_REG, NOT_RBPU
	MOVLW 0x01 ; valeur qu'on veut charger
	MOVWF TRISB ; on déplace la valeur de W à TRISB
	BCF STATUS,RP0
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

