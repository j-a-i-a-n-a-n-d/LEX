%{
#include<stdio.h>
%}

%s A B
%%
<INITIAL>0 BEGIN A;
<INITIAL>1 BEGIN INITIAL;
<INITIAL>\n BEGIN INITIAL; {printf("Not Accepted\n");}
<A>0 BEGIN INITIAL;
<A>1 BEGIN A;
<A>\n BEGIN INITIAL; {printf("Accepted\n");}
%%
int yywrap(){return 1;}
int main(){
printf("Enter String\n"); yylex();
return 0;
}
