.PHONY: app

CC := gcc
CFLAGS := -I.

INC_FILES := hello.h

%.o: %.c $(INC_FILES)
	$(CC) -c -o $@ $<

app: main.o hello.o
	$(CC) -o $@ $^ $(CFLAGS)

clean:
	rm app *.o