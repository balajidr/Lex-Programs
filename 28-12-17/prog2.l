%{
int kw=0,rel=0,letter=0,splchar=0,con=0,str=0;
%}

keyword if|then|else|for|while|int|float|real
relational <|<=|>|>=|<>|=
special "!"|"@"|"#"|"%"|"^"|"&"|"*"|"("|")"
letter [a-zA-Z]
constant [0-9]*
string ["][a-zA-Z]*["]

%%
{keyword} {kw++;letter+=yyleng;}
{relational} rel++;
{letter} letter++;
{special} splchar++;
{constant} con++;
{string} {str++;letter+=yyleng-2;}
. {}

%%
int main()
{
yyin=fopen("testprog.c","r");
yylex();
printf("\nKeywords: %d\nRelational Operators: %d\nLetters: %d\nSpecial Characters: %d\nConstants: %d\nStrings:%d",kw-1,rel,letter,splchar,con,str);
return 0;
}

