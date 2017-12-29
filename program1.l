%{
#include<stdio.h>
int vowels = 0;
int conso = 0;
%}

text [aeiouAEIOU] 

%%

{text}    {vowels++;}
[a-zA-Z]  {conso++;}

%%

int main(void)
{
yylex();

printf("\t%d Vowels",vowels);
printf("\n\t%d Consonents\n",conso);

return 0;

}
 
