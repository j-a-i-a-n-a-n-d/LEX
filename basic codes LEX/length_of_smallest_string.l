%{
#include<stdio.h>
#include<limits.h>
int min_len = INT_MAX, cur_len = 0;
%}
%%
[ ]   {
		min_len = min_len > cur_len ? cur_len: min_len;
		cur_len = 0;
	  }
\n  {
		min_len = min_len < cur_len ? min_len : cur_len;  
		printf("->Min Length %d\n", min_len); 
		min_len = INT_MAX;
		cur_len = 0;
	  }
. 	  {
		cur_len++;
	  }
%%
int yywrap(void){}
int main(){
	yylex();
	return 0;
}