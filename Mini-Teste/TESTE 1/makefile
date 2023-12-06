C = gcc
OBJS = main.o codifica_string.o
HDR = codifica_string.h

prog: $(OBJS)
	$(C) -o prog $(OBJS)
main.o: main.c $(HDR)
	$(C) -c main.c
codifica_string.o: codifica_string.s $(HDR)
	$(C) -c codifica_string.s
clear: $(OBJS)
	rm $(OBJS)