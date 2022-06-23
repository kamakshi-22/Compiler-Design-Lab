%{
#include<stdio.h>
%}
%%
\<[^>]*\> fprintf(yyout,"%s\n",yytext);
.|\n ;
%%
int yywrap()
{
return 1;
}
int main()
{

//LEX Code to extract all html tags in the given HTML file at
//run time and store into Text file given at run time

yyin=fopen("input.html","r");
yyout=fopen("output.txt","w");
yylex();
return 0;
}
