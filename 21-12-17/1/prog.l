%{
#include<stdio.h>
%}

%%

"abc" {printf("\"%s\"",yytext);}
. {}

%%

 main(void)
{

yylex();
return ;

 }



