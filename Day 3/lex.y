%{
#include<stdio.h>
#include<stdlib.h>
%}
%token SWITCH ID CASE BREAK NUM OPENPARANTHESES CLOSEPARANTHESES STMT COLON NEWLINE SEMICOLON OPENBRACE CLOSEBRACE DEFAULT
%%
		S	:	SWITCH OPENPARANTHESES ID CLOSEPARANTHESES OPENBRACE NEWLINE X //SC NEWLINE CLOSEBRACE ;
		X	:	CASE NUM COLON NEWLINE STMT SEMICOLON NEWLINE BREAK SEMICOLON NEWLINE
			|	DEFAULT COLON NEWLINE STMT SEMICOLON
%%
	main()
	{
	print(">>> ");
	yy.parse();
	}