     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		 
		MOV R2,#1321		;the no. which is to be checked for even or odd 
		MOV R3,#2

		SDIV R4,R2,R3 	;the no. is first divided by 2
		MUL R6,R4,R3	;result obtained is again multiplied by 2
		
		SUB R2,R6	;the result is subtracted from the original number to know if even or odd  R2=1 if odd R2=0 if even
		
stop B stop ; stop program
     ENDFUNC
     END