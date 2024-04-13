.PHONY: static link all clean

all:
	gcc -c main.c -o obj/main.o -I./inc
	gcc -c src/hello.c -o obj/hello.o -I./inc
	gcc -c src/helloWord.c -o obj/helloWord.o -I./inc

static:
	ar rcs lib/static/libhello.a obj/hello.o obj/helloWord.o 

link:
	gcc obj/main.o -Llib/static -lhello -o bin/app