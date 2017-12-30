




%{
#include<stdio.h>
int a[10];
int c;
int i;
int flag;
%}
%%
[0-9]* { flag=0;for(i=0;i<10;i++)a[i]=0;
        for(i=0;i<yyleng;i++){ c=yytext[i]-'0'; a[c]++; }
        for(i=0;i<10;i++){if(a[i]>=2)flag++;}if(flag<=1)printf("%s ",yytext);
        }
.


%%
int main(){
yylex();
return 0;
}



