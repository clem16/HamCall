## This is a simple Makefile

# Define what compiler to use and the flags.
CC=gcc
CXX=GCC
#CCFLAGS= -g -Wall -Werror
CCFLAGS = -g -std=c99 -Wall -Werror

all: main test

# Compile all .c files into .o files
# % matches all (like * in a command)
# $< is the source file (.c file)

%.o : %.c
	$(CC) -c $(CCFLAGS) $<

main: main.o fileio.o
	$(CC) -o main main.o fileio.o -lcurl

test: main
	./main

clean:
	rm -rf  *.o main build/ *.zip *.txt
