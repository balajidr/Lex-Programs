
%{

%}
%%
.*a[a-z^eiou]*e[a-z^aiou]*i[a-z^aeou]*o[a-z^aeiu]*u[a-z^aeio]*.* {
        printf("%s\n",yytext);}
. {}
%%

int main()
{
yylex();

return 0;
}






