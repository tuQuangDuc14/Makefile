PHONY: state1 state2 state3 state4 all clean

state1:
	gcc -E main.c -o main.i

state2:
	gcc -S main.i -o main.S

state3:
	gcc -c main.S -o main.o

state4: 
	gcc -o app main.o

all: 
	gcc -o app main.c

clean: 
	rm -rf app main.i main.o main.S main.i