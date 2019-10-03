.PHONY: all clean

all: chunk.o memory.o value.o debug.o main.o
	gcc -o interpreter.out chunk.o memory.o value.o debug.o main.o

clean:
	rm -f *.o

chunk.o:	chunk.c
	gcc -c chunk.c -o chunk.o
memory.o:	memory.c
	gcc -c memory.c -o memory.o
value.o:	value.c
	gcc -c value.c -o value.o
debug.o:	debug.c
	gcc -c debug.c -o debug.o
main.o:		main.c
	gcc -c main.c -o main.o



