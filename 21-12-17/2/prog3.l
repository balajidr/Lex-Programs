
%{
#include<stdio.h>
int num[10];
int d;
int a;
int flag;
%}
%%
[0-9]* { flag=0;for(a=0;a<10;a++)num[a]=0;
        for(a=0;a<yyleng;a++){ d=yytext[a]-'0'; num[d]++; }
        for(a=0;a<10;a++){if(num[a]>1)flag=1;}if(!flag)printf("%s ",yytext);
        }
.
%%
int main(){
yylex();
return 0;
}



