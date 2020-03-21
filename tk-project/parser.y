%{
	#define YYERROR_VERBOSE
	#include "global.h"
	void yyerror(const char* e);
	int yylex();
%}

%token DIV
%token MOD
%token ID
%token NUM
%token DONE 0

%%
line : expr ';' line
	|
	;
expr : expr '+' term	{ emit('+', NONE); }
	| expr '-' term	{ emit('-', NONE); }
	| term
	;
term : term '*' factor { emit('*', NONE); }
	| term '/' factor { emit('/', NONE); }
	| term DIV factor { emit(DIV, NONE); }
	| term MOD factor { emit(MOD, NONE); }
	| factor
	;
factor : '(' expr ')'
	| ID { emit(ID, $1); }
	| NUM { emit(NUM, $1); }
	;
%%
void parse()
{
	yyparse();
}
void yyerror(const char* e)
{
	error((char*)e);
}
