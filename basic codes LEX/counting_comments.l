%{
    #include<stdio.h>
    int nc=0;
%}  
%%
"/*"[a-zA-Z0-9\n\t ]*"*/"  {nc++;}
"//"[a-zA-Z0-9\t ]*"\n"   {nc++;}
. {;}
%%

void main()
{
    yylex();
    printf("No. of comments = %d",nc);
}
int yywrap()
{
    return 1;
}