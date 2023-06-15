%{
#include<stdio.h>
%}

%s A B C D

%%
<INITIAL>a BEGIN A;
<INITIAL>b BEGIN C;
<INITIAL>\n BEGIN INITIAL; {printf("Not Accepted\n");}
<A>a BEGIN A;
<A>b BEGIN B;
<A>\n BEGIN INITIAL; {printf("Accepted\n");}

<B>a BEGIN A;
<B>b BEGIN B;
<B>\n BEGIN INITIAL; {printf("Not Accepted\n");}

<C>b BEGIN C;
<C>a BEGIN D;
<C>\n BEGIN INITIAL; {printf("Accepted\n");}

<D>b BEGIN C;
<D>a BEGIN D;
<D>\n BEGIN INITIAL; {printf("Not Accepted\n");}
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
