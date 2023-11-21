C = gcc
OBJS = main_3.o mdc.o
HDRS = mdc.h

prog: $(OBJS)
	$(C) -o prog $(OBJS)
main_3.o: main_3.c mdc.h
	$(C) -c main_3.c
mdc.o: mdc.s mdc.h
	$(C) -c mdc.s
clear: $(OBJS)
	rm $(OBJS)