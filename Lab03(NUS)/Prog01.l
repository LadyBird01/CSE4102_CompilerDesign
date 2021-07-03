%{
    #include<stdio.h>
%}



%%
[0-9]+ { printf("%s Number\n", yytext); }
"+" { printf("%s ADD\n", yytext); }
. { printf("Not matched"); }
%%
int yywrap(){

}

int main(){
    yylex();
    return 0;
}

