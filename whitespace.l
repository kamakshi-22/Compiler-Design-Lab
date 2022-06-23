%option noyywrap
%{

%}
%%
[ \n\t]+ fprintf(yyout," ");
. fprintf(yyout,"%s",yytext);
%%
int main()
{

//LEX Code to replace white spaces of ‘Input.txt’ file by a
//single blank character into ‘Output.txt’ file

extern FILE *yyin,*yyout;
yyin=fopen("Input.txt","r");
yyout=fopen("Output.txt","w");
yylex();
return 0;
}
