%{
#include<stdio.h>
void yyerror(char *s); 
int yylex();   
%}

%token NUM ADD SUB ID ASSIGN SEMI IF EQUAL LP RP LB RB
%start program          

%%
program: IF LP expr RP LB id_declare RB
    ;

id_declare: ID ASSIGN expr SEMI
    ;
expr: expr ADD number
    | expr SUB number
    | expr EQUAL number
    | number
    | ID
    ;
number: NUM
    | SUB NUM
    ;


%%

int main(){
    yyparse();
    printf("Parsing finished");
}

void yyerror(char *s){
   fprintf(stderr, "error: %s", s); 
}