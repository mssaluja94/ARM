     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		 
		MOV R2,#55	;first number and the final result register
		MOV R3,#230	;second number
		MOV R5,#100	;third number
	
		CMP R2,R3	;comparing first 2 registers
		ITE GT
		MOVGT R7,R2
		MOVLE R7,R3
		
		CMP R7,R5	;comparing the larger of the two numbers with the third register
		ITE GT
		MOVGT R2,R7
		MOVLE R2,R5
		
stop B stop ; stop program
     ENDFUNC
     END