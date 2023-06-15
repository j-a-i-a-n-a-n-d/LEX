%{
#include<stdio.h>
%}

%s A B

%%
<INITIAL>a BEGIN INITIAL;
<INITIAL>b BEGIN A;
<INITIAL>\n BEGIN INITIAL; {printf("Not Accepted\n");}

<A>a BEGIN INITIAL;
<A>b BEGIN B;
<A>\n BEGIN INITIAL; {printf("Not Accepted\n");}
<B>a BEGIN INITIAL;
<B>b BEGIN B;
<B>\n BEGIN INITIAL; {printf("Accepted\n");}
%%

int yywrap(){ return 1; } 

int main()
{
printf("Enter String\n"); yylex();
return 0;
}
