.PHONY: clean run asm

OBJS = main.o fibonacci.o
CFLAGS =-Os -g3 -Wall

run: fibonacci
	./fibonacci

fibonacci: $(OBJS)
	gcc $(CFLAGS) -o fibonacci $(OBJS)

%.o: %.c
	gcc $(CFLAGS) -c -o $@ $<

clean:
	rm -f fibonacci $(OBJS)

asm:
	gcc -S -o fibonacci.s fibonacci.c
	gcc -S -o main.s main.c
