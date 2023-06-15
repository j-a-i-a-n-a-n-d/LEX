%{
#include<stdio.h>
%}

%s A B C D E F G
%%
<INITIAL>0 BEGIN INITIAL;
<INITIAL>1 BEGIN A;
<INITIAL>\n BEGIN INITIAL; {printf("Not Accepted\n");}
<A>0 BEGIN F;
<A>1 BEGIN B;\
<A>\n BEGIN INITIAL; {printf("Not Accepted\n");}
<B>0 BEGIN D;
<B>1 BEGIN C;
<B>\n BEGIN INITIAL; {printf("Not Accepted\n");}
<C>0 BEGIN D;
<C>1 BEGIN C;
<C>\n BEGIN INITIAL; {printf("Accepted\n");}
<D>0 BEGIN G;
<D>1 BEGIN E;
<D>\n BEGIN INITIAL; {printf("Accepted\n");}
<E>0 BEGIN F;
<E>1 BEGIN B;
<E>\n BEGIN INITIAL; {printf("Accepted\n");}
<F>0 BEGIN G;
<F>1 BEGIN E;
<F>\n BEGIN INITIAL; {printf("Not Accepted\n");}
<G>0 BEGIN INITIAL;
<G>1 BEGIN A;
<G>\n BEGIN INITIAL; {printf("Accepted\n");}
%%
int yywrap(){return 1;}
int main(){
printf("Enter String\n"); yylex();
return 0;}
