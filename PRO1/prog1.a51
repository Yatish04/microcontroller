org 0000H
	mov R0,#5
	mov R1,#10H
	MOV DPTR,#NUMS
	REP: 
	MOV A,#0H
	MOVC A,@A+DPTR
	MOV @R1,A
	INC R1
	INC DPTR
	DJNZ R0,REP
	
	CONT: SJMP CONT
	NUMS: DB 10H,20H,30H,40H,50H
END