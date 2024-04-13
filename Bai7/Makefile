.PHONY: all tong hieu run clean

CC:= gcc

%.o: $(INC_FILE)
	$(CC) -c Src/hieu.c -o obj/hieu.o -I./Inc
	$(CC) -c Src/tong.c -o obj/tong.o -I./Inc
	$(CC) -c main.c -o obj/main.o -I./Inc

tong: obj/tong.o obj/main.o
	$(CC) -o bin/app.exe obj/tong.o obj/main.o

hieu: obj/hieu.o obj/main.o
	$(CC) -o bin/app.exe obj/hieu.o obj/main.o

run:
	.\bin\app.exe

clean:
	rm ./obj/*.o
