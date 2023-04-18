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

void main()
{
    yylex();
    printf("Number of words: %d",word_count);
    printf("Number of lines: %d",line_count);
    printf("Number of characters: %d",char_count);
}
int yywrap()
{
    return 1;
}