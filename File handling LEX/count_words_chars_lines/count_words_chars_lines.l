%{
    #include<stdio.h>
    #include<stdlib.h>
    int word_count=0;
    int line_count=0;
    int char_count=0;
%}

%%
[^ \t\n]+ {word_count++;char_count+=yyleng;}
\n {line_count++;}
. {char_count++;}
%%

    int main() 
    {
        extern FILE *yyin, *yyout;
        yyin = fopen("f1input.txt", "r");
        yyout = fopen("f1output.txt", "w");
        yylex();
        fprintf(yyout, "No. of lines : %d\nNo. of spaces : %d\nNo. of characters : %d",line_count+1,word_count,char_count);
        return 0;
}
int yywrap()
{
    return 1;
} 