%{
#include<stdio.h>
%}
text ^d(.)+t

%%

{text}+  printf("%s",yytext);
. {}

%%

 main(void)
{

yylex();

 }



