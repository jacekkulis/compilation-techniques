# the compiler: gcc for C program, define as g++ for C++
CC = g++

# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CFLAGS  = -g -Wall

# the build target executable:
TARGET = myprog

OBJECTS=main.o emitter.o error.o init.o lexer.o parser.o symbol.o

all: $(TARGET)

$(TARGET): ${OBJECTS}
	$(CC) $(CFLAGS) -o $(TARGET) ${OBJECTS}


main.o: main.c global.h
emitter.o: emitter.c global.h
error.o: error.c global.h
init.o: init.c global.h
lexer.o: lexer.c global.h
parser.o: parser.c global.h
symbol.o: symbol.c global.h


clean:
	-rm $(TARGET) ${OBJECTS}
