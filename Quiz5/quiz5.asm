		#include<p18F4550.inc>

n			equ		D'6'
zip			set 	0x10

			org 0x00
 			goto start
 			org 0x08
 			retfie
 			org 0x18
 			retfie

start		CLRF	TRISD, A
			CLRF	PORTD, A
			MOVLW	n
			MOVWF	zip, A
			BSF		PORTD, 0, A

LOOP		RLNCF	PORTD, F, A
			DECFSZ	zip, F, A
			BRA		LOOP
			
			NOP
			END