%{
    #include<stdio.h>
%}

%s A B DEAD
%%
<INITIAL>a BEGIN A;
<INITIAL>b BEGIN DEAD;
<INITIAL>\n BEGIN INITIAL; {printf("Not Accepted\n");}

<A>a BEGIN A;
<A>b BEGIN B;
<A>\n BEGIN INITIAL; {printf("Not Accepted\n");}

<B>a BEGIN A;
<B>b BEGIN B;
<B>\n BEGIN INITIAL; {printf("Accepted\n");}

<DEAD>a BEGIN DEAD;
 
<DEAD>b BEGIN DEAD;
<DEAD>\n BEGIN INITIAL; {printf("Not Accepted\n");}

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
