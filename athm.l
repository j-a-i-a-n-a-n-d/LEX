%{
    #include "y.tab.h"
    #include<stdio.h>
%}

%%
[a-zA-Z] {return ALPHABET;}
[0-9]+ {return NUMBER;}
[ \t]+ ;
[\n] return '\n';
. {return yytext[0];}
%%