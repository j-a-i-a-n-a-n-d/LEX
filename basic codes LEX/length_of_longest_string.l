%{
#include<stdio.h>
#include<limits.h>
int max_len = INT_MIN, cur_len = 0;
%}
%%
[ ]   {
		max_len = max_len < cur_len ? cur_len: max_len;
		cur_len = 0;
	  }
\n  {
		max_len = max_len < cur_len ? cur_len: max_len;
		printf("->Max Length %d\n", max_len); 
		max_len = INT_MAX;
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