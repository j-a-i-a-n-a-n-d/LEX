%{
#include<stdio.h>
%}

%%

[a]{2,}| [e]{2,} | [i]{2,} | [o]{2,} | [u]{2,}  {printf("2 or more occurance\n");}
.* {;}
%%

int main()
{
	yylex();
	return 0;
}