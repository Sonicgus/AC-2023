C = gcc
OBJS = main_1.o soma.o
HDRS = soma.h

prog: $(OBJS)
	$(C) -o prog $(OBJS)
main_1.o: main_1.c soma.h
	$(C) -c main_1.c
soma.o: soma.s soma.h
	$(C) -c soma.s
clear: $(OBJS)
	rm $(OBJS)