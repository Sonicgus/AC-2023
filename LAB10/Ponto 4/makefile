C = gcc
OBJS = main_4.o procura.o
HDRS = procura.h

prog: $(OBJS)
	$(C) -o prog $(OBJS)
main_4.o: main_4.c procura.h
	$(C) -c main_4.c
procura.o: procura.s procura.h
	$(C) -c procura.s
clear: $(OBJS)
	rm $(OBJS)