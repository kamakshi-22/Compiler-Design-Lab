%option noyywrap
%{
int n,w,c;
%}
%%
\n {n++;}
[^\n\t]+ {w++;c=c+yyleng;}
. c++;
%%
int main()
{
// count & print total characters, words, white spaces in given ‘Input.txt’ file
extern FILE *yyin;
yyin=fopen("Input.txt","r");
yylex();
printf("Line=%d \n Word=%d \n Total Char=%d \n",n,w,c);
return 0;
}
