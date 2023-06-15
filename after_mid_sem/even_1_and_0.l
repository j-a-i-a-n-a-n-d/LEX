%{
#include<stdio.h>
%}

%s A B C

%%
<INITIAL>0 BEGIN A;
<INITIAL>1 BEGIN C;
<INITIAL>\n BEGIN INITIAL; {printf("Accepted\n");}

<A>0 BEGIN INITIAL;
<A>1 BEGIN B;
<A>\n BEGIN INITIAL; {printf("Not Accepted\n");}

<B>0 BEGIN C;
<B>1 BEGIN A;
<B>\n BEGIN INITIAL; {printf("Not Accepted\n");}

<C>0 BEGIN B;
<C>1 BEGIN INITIAL;
<C>\n BEGIN INITIAL; {printf("Not Accepted\n");}
%%

int yywrap()
{
return 1;
}

int main()
{
printf("Enter String\n"); yylex();
return 0;
}
