     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		 
		MOV R2,#0x20000000	;starting address for fibonacci series
		MOV R3,#0	;initial value for the series
		MOV R4,#1 	;initial value for the series
		STR R3,[R2]
		ADD R2,#4
		STR R4,[R2]

loop1	ADD R5,R3,R4
		ADD R2,#4
		STR R5,[R2]
		MOV R3,R4
		MOV R4,R5
		B loop1
		
stop B stop ; stop program
     ENDFUNC
     END