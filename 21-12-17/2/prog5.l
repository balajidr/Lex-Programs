

%{
#include<stdio.h>
#include<string.h>
char answer[25];
%}
%%
(.*)(\n) {strcpy(answer, yytext); }
%%
int main(){
        yylex();
        int i,ca=0,cb=0;
        for(i=0;i<strlen(answer);i++){
                if(answer[i] == 'a')
                        ca++;
                if(answer[i] == 'b')
                        cb++;
        }
        if(ca%2==0 &&cb%2==1){
                printf("%s", answer);
        }
        return 0;
}






