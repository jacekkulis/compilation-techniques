lexAnalizer : emitter.o error.o init.o \
			lexer.o main.o parser.o \
			symbol.o 
			gcc -o lexAnalizer emitter.o error.o init.o \
			lexer.o main.o parser.o \
			symbol.o -lfl 

emitter.o : emitter.c global.h parser.h
	gcc -c emitter.c
	
error.o : error.c global.h 
	gcc -c error.c

init.o : init.c global.h parser.h
	gcc -c init.c
	
lexer.o : lexer.c global.h
	gcc -c lexer.c
	
main.o : main.c global.h
	gcc -c main.c
	
parser.o : parser.c global.h parser.h
	gcc -c parser.c
	
symbol.o : symbol.c global.h
	gcc -c symbol.c
	
lexer.c : lexer.l global.h
	flex -olexer.c lexer.l
	
parser.c parser.h: parser.y global.h
	bison parser.y -o parser.c -d 
	
clean :
	rm lexAnalizer emitter.o error.o init.o \
	lexer.o main.o parser.o symbol.o lexer.c parser.c parser.h