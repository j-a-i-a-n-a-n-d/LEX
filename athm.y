%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror();
%}

%token ALPHABET NUMBER
%left '+' '-'
%left '*' '/'

%%
grammar : expr '\n' {printf("Valid Expression\n");exit(0);}

expr : expr '+' expr 
        | expr '-' expr 
        | expr '*' expr 
        | expr '/' expr 
        | '(' expr ')'
        | ALPHABET
        | NUMBER
        ;
%%

void main()
{
    printf("Enter the expression\n");
    yyparse();
}
int yyerror()
{
    printf("Invalid Expression\n");
    return 0;
}
int yywrap()
{
    return 1;
}