%{
    #include<stdio.h>
%}
%%
[<][^>]*[>] ;{fprintf(yyout, "%s", yytext); }  //"<"[^>]*>
. ; 
%%
int yywrap() {
    return 1;
}
int main() {
    extern FILE *yyin, *yyout;
    yyin = fopen("inputfile.html", "r");
    yyout = fopen("outputfile.txt", "w");
    yylex();
    return 0;
}
