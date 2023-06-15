%{
#include<stdio.h>
%}

%s A B

%%
<INITIAL>1 BEGIN A;
<INITIAL>0 BEGIN A;
<INITIAL>[a-zA-z2-9] BEGIN INITIAL;
<INITIAL>\n BEGIN INITIAL; {printf("Not Accepted\n");}
<A>1 BEGIN B;
<A>0 BEGIN B;
<A>\n BEGIN INITIAL; printf("Not Accepted\n");
<B>1 BEGIN A;
<B>0 BEGIN A;
<B>\n BEGIN INITIAL; printf("Accepted\n");
%%

int yywrap(){ return 1; } 

int main()
{
printf("Enter String\n"); yylex();
return 0;
}
