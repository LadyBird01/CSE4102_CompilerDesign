%{
#include<stdio.h>
void yyerror(char *s); 
int yylex();   
%}

%token NUM ADD SUB
%start Cal      
%left ADD SUB      

%%
Cal: expr {$$ = $1; printf("%d\n", $$); printf("Cal: expr -> %d\n", $$);}
    ;
expr: expr ADD NUM {$$ = $1 + $3; printf("expr ADD NUM -> %d\n", $$);}
    | expr SUB NUM {$$ = $1 - $3; printf("expr SUB NUM -> %d\n", $$);}
    | NUM {$$ = $1; printf("NUM -> %d\n", $$);}
    ;

%%

int main(){
    yyparse();
    printf("Parsing finished");
}

void yyerror(char *s){
   fprintf(stderr, "error: %s", s); 
}