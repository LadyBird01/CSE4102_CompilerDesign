%{
    #include "Cal.tab.h"
%}

delim [ \t] 
WS {delim}+
digit [0-9]
number ({digit}+)
letter [A-Za-z]
us [_]
id ({us}|{letter})({letter}|{us}|{digit})

%%
{WS} {}
{number} {yylval = atoi(yytext); return(NUM) }
{id} {return(ID);}

"=" {return(ASSIGN);}
";" {return(SEMI);}

"+" {return(ADD);}
"-" {return(SUB);}
%%
int yywrap(){

}

int main(){
    yylex();
    return 0;
}