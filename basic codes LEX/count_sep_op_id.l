%{
#include<stdio.h>
%}

%%
double|int|char|extern|return|const|float   {printf("KEYWORD\n");} 	
[{};,()]   {printf("SEPERATOR\n");}
[+-/=*%]   {printf("OPERATOR\n");}
([a-zA-Z][0-9])+|[a-zA-Z]* {printf("Identifier\n");}    
.|\n ; 															
%%

int yywrap() {
    return 1;
}

int main(void) {
    yylex();
    return 0;
}