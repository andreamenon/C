# Makefile

CC = gcc
CFLAGS = -Wall -g
OBJ = main.o somma.o
TARGET = programma

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ)

main.o: main.c somma.h
	$(CC) $(CFLAGS) -c main.c

somma.o: somma.c somma.h
	$(CC) $(CFLAGS) -c somma.c

clean:
	rm -f *.o $(TARGET)

