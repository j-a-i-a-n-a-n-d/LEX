%{
    #include<stdio.h>
    int count=0;
%}
%%
[aeiouAEIOU]{2} {count++; printf("%d ",count);}
. {;}
%%
int yywrap(void){ }
int main()
{
    yylex();
    printf("Number of tokens: %d",count);
    return 0;
}