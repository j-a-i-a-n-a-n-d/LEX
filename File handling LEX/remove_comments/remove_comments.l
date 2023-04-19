%{
#include<stdio.h>
int curr=0;
%}
%%
"//".*\n {;}
"/*".* {curr=1;}
"*/" {curr=0;}
.* {if(!curr)fprintf(yyout,"%s",yytext);} ;
%%
int yywrap() {
 return 1;
}
int main() {
    extern FILE *yyin;
    yyin = fopen("input.txt", "r");
    yyout = fopen("output.txt", "w");
    yylex();
    return 0;
}