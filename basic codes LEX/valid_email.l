%{
    #include<stdio.h>
    #include<stdlib.h>

%}

%%
[a-zA-Z0-9!#$%^&*\.]+[@][a-zA-Z]+[\.][a-zA-Z]+ {printf("Valid Email\n");}
.* {printf("Invalid Email\n");}
%%

void main()
{
    yylex();
}
int yywrap()
{
    return 1;
}