%{
int n=0;
%}
%%
"while"|"if"|"else" {n++;printf("keywords: %s",yytext);}
"int"|"float" {n++;printf("\n keywords: %s",yytext);}
[a-zA-Z][a-zA-Z0-9_]* {n++;printf("\n identifier: %s",yytext);}
"+"|"-"|"*"|"="|"=="|"<=" {n++;printf("\n operator: %s",yytext);}
"("|")"|"{"|"}"|","|";" {n++;printf("\n separator: %s",yytext);}
[0-9]*"."[0-9]+ {n++;printf("\n float\t: %s",yytext);}
[0-9]+ {n++;printf("\n integer: %s",yytext);}
%%
int main()
{
yylex();
printf("Total Number of Tokens=%d\n",n);
return 0;
}
