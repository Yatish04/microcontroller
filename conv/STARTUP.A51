ORG 0000H
	MOV R4,#0FFH
	MOV A,R4
	MOV DPTR,#TABLE
	
	ANL A,#0FH
	MOVC A,@A+DPTR
	MOV R2,A	//R1 HAS LSB
	
	MOV A,R4
	ANL A,#0F0H
	SWAP A
	MOVC A,@A+DPTR                
		                                                                                                                                       	                
SJMP $                  
	TABLE: DB '0123456789ABCDEF'

END                         