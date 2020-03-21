%{
	#include "global.h"
	int lineno = 1;
%}

whitespace	[ \t]
newLine		[\n]
setWitespace	{whitespace}+
digit	[0-9]
number 	{digit}+

%%
{setWitespace}	{ /* ignore */}
{newLine}	{lineno++;}
[0-9]+	{yylval = atoi(yytext); return NUM;}
[A-Za-z]+	{int p;
				p = lookup (yytext); 
				if (p == 0)
					p = insert (yytext, ID);
				yylval = p;
				return symtable[p].token;
			}

<<EOF>> {return DONE;}
.		{return yytext[0];}

%%
int lexan() 
{
	return yylex();
}
/*int yywrap(){}*/