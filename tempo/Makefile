# Makefile

CC = gcc
CFLAGS = -Wall -g
OBJ = main.o acca.o
TARGET = programma

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ)

main.o: main.c acca.h
	$(CC) $(CFLAGS) -c main.c

acca.o: acca.c acca.h
	$(CC) $(CFLAGS) -c acca.c

clean:
	rm -f *.o $(TARGET)

