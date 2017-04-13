
	LIST      p=16F84            ; D�finition de processeur
	#include <p16F84.inc>        ; D�finitions de variables


;*********************************************************************
;                           SECTIONS DE DONNEES                      *
;*********************************************************************

donn�es			udata  		; d�but d'une section de donn�es non initialis�es (le nom est facultatif)
	
cmpt1	RES	1				; r�serve 1 octet (cmpt1 pointe sur le 1er �l�ment de la section)
cmpt2	RES	1				; r�serve 1 octet (cmpt2 pointe sur le 2e �l�ment de la section)

donn�es_init	idata  		; d�but d'une section de donn�es initialis�es (le nom est facultatif)

cmpt3	DB	0x03			; affecte un octet (valeur 0x03) � cmpt3

;*********************************************************************
;         SECTION DE CODE (sous_programme de temporisation)          *
;*********************************************************************
	
SP_tempo	code	; d�but de la section de code "SP_tempo"

tempo 
	global tempo	; exporte la r�f�rence "tempo" (�tiquette)

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

	END		