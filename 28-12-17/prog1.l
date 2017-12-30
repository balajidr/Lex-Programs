%{
int iden=0,num=0,whit=0,assi=0,oper=0;
%}

identifier [a-z_]([a-z_]|[0-9])*
number [0-9]*
whitespace [ \t\n]
assignment =
operator ("+"|"-"|"*"|"/")

%%
{identifier} iden++;
{number} num++;
{whitespace} whit++;
{assignment} assi++;
{operator} oper++;
. {}
%%
int main()
{
yylex();
printf("\nIdentifiers: %d\nNumbers: %d\nWhitespaces: %d\nAssignments: %d\nOperators: %d",iden,num,whit,assi,oper);
return 0;
}

