%option noyywrap
%{
int n,m,t,c;
%}
%%
\n n++;
\t m++;
[ ] t++;
. c++;
%%
int main()
{
yylex();
//count the number of lines, space, tab-meta char, rest of chars in given input
printf("Total number of \n lines=%d \n tabs=%d \n space=%d \n chars=%d",n,m,t,c);
printf("\n");
return 0;
}
