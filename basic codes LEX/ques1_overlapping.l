%{
    int cnt = 0;
    int isVowel(char a);
%}
%%
[^ \t\n]+ {
    for(int i = 0;i<yyleng-1;i++){
        if(isVowel(yytext[i])==1&&isVowel(yytext[i+1])==1){
            cnt++;
        }
    }
}
. ;
\n ;
%%
int main(){
    yylex();
    printf("\n%d \n",cnt);
}
int yywrap(){return 1;}
int isVowel(char a){
    switch(a){
        case 'a':
        case 'e':
        case 'i':
        case 'o':
        case 'u':
            return 1;
        default: 
            return 0;
    }
    return 0;
}