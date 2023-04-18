%{
    #include<stdio.h>
    #include<stdbool.h>
%}  // checking if the number is prime or not
%%
[0-9]* {
    int num = atoi(yytext);
    int i=0;
    int rem=0;
    int sum=0;
    for(i = 1; i < num; i++)  
    {  
        rem = num % i;  
            if (rem == 0) sum = sum + i;   
    } 
if (sum == num) printf("Perfect Number\n");  
else  printf("\n not a Perfect Number\n");  
}
. {;}
\n {;}
%%

int main()
{
    yylex();
    return 1;
}
int yywrap()
{
    return 1;
}