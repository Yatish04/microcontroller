ORG 0000H
	NUM1 EQU 08H
	NUM2 EQU 08H
	MOV R3,#11H
		CJNE R3,#00H,SKIP1
		SJMP ADD1
		SKIP1:
		CJNE R3,#01H,SKIP2
		SJMP SUB1
		SKIP2:
		CJNE R3,#10H,SKIP3
		SJMP MUL1
		SKIP3:
		SJMP DIV1

	ADD1:
		CLR C
		MOV A,#NUM1
		ADDC A,#NUM2
		JNC SKIPA
		MOV B,#01H
		SJMP STOP
		SKIPA:
			MOV B,#00H
		SJMP STOP

	SUB1:
		CLR C
		MOV A,#NUM1
		SUBB A,#NUM2
		JNC SKIPS
		MOV B,#01H
		SJMP STOP
		SKIPS:
			MOV B,#00H
		SJMP STOP


	MUL1:
		CLR C
		MOV A,#NUM1
		MOV B,#NUM2
		MUL AB
		SJMP STOP

	DIV1:
		CLR C
		MOV A,#NUM1
		MOV B,#NUM2
		DIV AB
		SJMP STOP
		
	STOP: SJMP $
END