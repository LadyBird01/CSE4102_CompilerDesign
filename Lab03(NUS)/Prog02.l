%option noyywrap

%{
    #include"Prog02.tab.h"
    #include<stdio.h>
%}



delim [ \t\n] 
WS {delim}+
digit [0-9]
number ({digit}+)
letter [A-Za-z]
us [_]
id ({us}|{letter})({letter}|{us}|{digit})*


%%
{WS} {}
{number} {yylval = atoi(yytext); return(NUM);}    
"if" {return(IF);}
{id} {return(ID);}


"=" {return(ASSIGN);}
";" {return(SEMI);}
"==" {return(EQUAL);}

"+" {return(ADD);}                           
"-" {return(SUB);}
"(" {return(LP);}
")" {return(RP);}
"{" {return(LB);}
"}" {return(RB);}
%%




