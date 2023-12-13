#
# Makefile
#
CC = gcc
CFLAGS =
LIBS = -lm
calcul: calculate.o main.o
	gcc calculate.o main.o -o calcul $(LIBS) -g
calculate.o: calculate.c calculate.h
	gcc -c calculate.c $(CFLAGS) -g
main.o: main.c calculate.h
	gcc -c main.c $(CFLAGS) -g
clean:
	-rm calcul *.o *~
# End Makefile
