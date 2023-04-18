%{
    #include<stdio.h>
    #include<stdlib.h>

%}

%%
[789]{1}[0-9]{9} printf("Valid Mobile Number");
.* printf("Invalid Mobile Number");
%%

void main()
{
    yylex();
}
int yywrap()
{
    return 1;
}