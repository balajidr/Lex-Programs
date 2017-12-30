

%{
%}
%%
[a-z]*(abb)[a-z]* {};
. {ECHO;}
%%
int main(){
yylex();
return 0;
}




