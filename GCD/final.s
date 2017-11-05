     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		 
		MOV R2,#5740		;first number	
		MOV R3,#615		;second number
		MOV R4,#0 		;register in which the final answer is stored.
		
		CMP R3,R2
		IT EQ
		MOVEQ R4,R2
loop1	CMP R3,R2
		IT NE
		CMPNE R3,R2
		
		IT GT
		SUBGT R3,R2
		MOVGT R4,R2
		
		IT LE
		SUBLE R2,R3
		MOVLE R4,R3
		
		BNE loop1
stop B stop ; stop program
     ENDFUNC
     END
