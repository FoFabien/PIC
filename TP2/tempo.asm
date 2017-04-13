
	LIST      p=16F84            ; Définition de processeur
	#include <p16F84.inc>        ; Définitions de variables


;*********************************************************************
;                           SECTIONS DE DONNEES                      *
;*********************************************************************

données			udata  		; début d'une section de données non initialisées (le nom est facultatif)
	
cmpt1	RES	1				; réserve 1 octet (cmpt1 pointe sur le 1er élément de la section)
cmpt2	RES	1				; réserve 1 octet (cmpt2 pointe sur le 2e élément de la section)

données_init	idata  		; début d'une section de données initialisées (le nom est facultatif)

cmpt3	DB	0x03			; affecte un octet (valeur 0x03) à cmpt3

;*********************************************************************
;         SECTION DE CODE (sous_programme de temporisation)          *
;*********************************************************************
	
SP_tempo	code	; début de la section de code "SP_tempo"

tempo 
	global tempo	; exporte la référence "tempo" (étiquette)

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