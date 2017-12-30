%{
        int wordcount=0,i=0;
%}


words [/][*].*[*][/]
words2 ["][/][*].*[*][/]["]

%%

{words} {
                printf("\"");
                for(i=2;i<yyleng-2;i++)
                printf("%c",yytext[i]);
                printf("\"");
                wordcount++;}
{words2} {
                printf("\"%s\"",yytext);
                wordcount++;}

%%

int main()
            {
        yylex();
       // printf(" The number of matched (ab) strings : %d",wordcount);
        return 0;
}


