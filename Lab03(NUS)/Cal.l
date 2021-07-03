%option noyywrap

%{
    #include"Cal.tab.h"
    #include<stdio.h>
%}



delim [ \t] 
WS {delim}+
digit [0-9]
number ({digit}+)



%%
{WS} {}
{number} {yylval = atoi(yytext); return(NUM);}                       
"+" {return(ADD);}                           
"-" {return(SUB);}
%%




