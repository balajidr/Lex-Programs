%{

%}

text [\+\-]*[0-9]+

%%

{text} {printf("\" %s \"",yytext);}
. {}

%%

 main(void)
{


yylex();


 }



