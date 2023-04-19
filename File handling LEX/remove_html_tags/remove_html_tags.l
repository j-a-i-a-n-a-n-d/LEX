%{
    #include<stdio.h>
    #include<stdlib.h>
%}

%%
"<"[^>]*> {fprintf(yyout,"%s\n",yytext);}
. {;}
%%

int main() 
{
        extern FILE *yyin, *yyout;
        yyin = fopen("inputfile.html", "r");
        yyout = fopen("f1output.txt", "w");
        yylex();
        return 0;
}
int yywrap()
{
    return 1;
} 