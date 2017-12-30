%{

%}

text [a-z A-Z]

%%

{text}+  {printf(" %s \n",yytext);}
. {}

%%

 main(void)
{

yylex();

 }



