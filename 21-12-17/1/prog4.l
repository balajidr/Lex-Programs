%{

%}

text (ab+)

%%

{text} {printf("\" %s \"",yytext);}
. {}

%%

 main(void)
{

yylex();

 }



