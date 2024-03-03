$MOD812
MOV A, R0;
MOV B, R1;

Subs:
	SUBB A, R1 ;
	JBC  CY, NegNum ;
	JMP PosNum ;

NegNum:
	MOV A, R1;
	Mov @R0, B;
	SUBB A, R0;
	MOV R0, A;

PosNum:  
	MOV R0, A;

END