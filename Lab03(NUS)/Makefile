main: Cal.l
	lex Cal.l
	gcc lex.yy.c 
	a <input.txt> output.txt 

main02: Cal.l Cal.y
	yacc -d Cal.y
	lex Cal.l
	gcc Cal.tab.c lex.yy.c 
	a <input.txt> output.txt
	

main03: Prog02.l Prog02.y
	yacc -d Prog02.y
	lex Prog02.l
	gcc Prog02.tab.c lex.yy.c 
	a <input.txt> output.txt