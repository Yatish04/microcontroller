ORG 0000H
	MOV R1,#0FFH
	MOV R0,#20H
	MOV B,#10
	MOV A,R1
	
	DIV AB
	MOV @R0,B
	INC R0
	
	MOV B,#10

	DIV AB
	MOV @R0,B
	INC R0
	
	MOV B,#10

	DIV AB
	MOV @R0,B
	
	SJMP $
END