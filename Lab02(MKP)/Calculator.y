%{
    #include<stdio.h>
    #include<stdlib.h>
%}

%token DIGIT
%left '+' '-'
%left '*' '/'

%%

start : expr '\n' { printf("\nComplete"); exit(1); }
    ;
expr: expr '+' expr {printf("+\n"); $$ = $1 + $3; printf("%d\n", $$); }
    | expr '-' expr {printf("-\n"); $$ = $1 - $3; printf("%d\n", $$); }
    | expr '*' expr {printf("*\n"); $$ = $1 * $3; printf("%d\n", $$); }
    | expr '/' expr {printf("/\n"); $$ = $1 / $3; printf("%d\n", $$); }
    | '(' expr ')'
    | DIGIT {printf("%d ", $1); }
    ;

%%

yyerror(){
    printf("Error");
}

yylex(){
    int c;
    c = getchar();
    if(isdigit(c)){
        yylval = c - '0';
        return DIGIT;
    }
    return c;

}

int main(){
    yyparse();
    return 1;
}