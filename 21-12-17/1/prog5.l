%{
#include<stdio.h>
%}

text [\+\-][0-9]+

%%
[^a-z \n]+ ECHO;
. {}

%%

 main(void)
{

yylex();
return ;
 }



