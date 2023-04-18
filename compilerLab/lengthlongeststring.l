%{
    #include<stdio.h>
    int maxxy =0;
    int length=0;
%}

%%

[ ] {
    if (length>maxxy) maxxy = length;length=0;
}
\n; {if (length>maxxy) maxxy = length;length=0;}
. ; {length++;}

%%

int main()
{

    yylex();
    if (length>maxxy)maxxy=length;
    printf("Length of the longest string : %d",maxxy);
    return 1;
}

int yywrap(){
    return 1;
}