%{
 #include<stdio.h>
 #include<stdlib.h>
 int num;
 int flag=0;
%}
%%
[0-9]+ { num=atoi(yytext);
 for(int i=2;i<num;i++)
 if(num%i==0)
 flag=1;
 if(flag==0)
 printf("Prime");
 else if(flag==1)
 printf("Not prime");
 flag=0;
 }
%%
int yywrap(void){}
int main() {
 yylex();
 return 0;
} 
