%{
    #include<stdio.h>
    #include<stdlib.h>

%}

%%
[a-zA-Z]+[a-zA-Z0-9_]* {printf("Valid Identifer");}
.* {printf("Invalid Identifer");} 
%%

void main()
{
    yylex();
}
int yywrap()
{
    return 1;
}