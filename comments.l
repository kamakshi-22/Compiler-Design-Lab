%option noyywrap
%{
#include<stdio.h>
%}
%%
\/\/(.*) {}; //single line comment
\/\*(.*\n)*.*\*\/ {}; //multi line comment
%%
int main()
{

//LEX Code to remove the commentsfrom any C-Program
//given at run-time and store into ‘out.c’ file

yyin=fopen("input.c","r");
yyout=fopen("out.c","w");
yylex();
return 0;
}
