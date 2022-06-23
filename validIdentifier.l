%option noyywrap
%{
int c=0;
%}
%%
[a-zA-Z_][a-zA-Z0-9_]* {c++; printf("\t Valid Identifier=%s",yytext);}
. ;
%%
int main()
{
yylex();
printf("\nTotal number of Valid Identifier = %d",c);
printf("\n");
return 0;
}



