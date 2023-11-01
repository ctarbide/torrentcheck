CFLAGS := -std=c99 -O2 -Wall -Wno-pointer-sign -D_DEFAULT_SOURCE

all: torrentcheck

clean:
	rm *.o

torrentcheck: torrentcheck.o sha1.o
	$(CC) $(CFLAGS) -o $@ $^
