%{
#include<stdio.h>    
%}

%%
"A"|"E"|"I"|"O"|"U"|"a"|"e"|"i"|"o"|"u" { printf("Vowel Found\n"); }
. { printf("Consonant Found\n"); }
%%

int yywrap(){

}

int main(){
    yylex();
}