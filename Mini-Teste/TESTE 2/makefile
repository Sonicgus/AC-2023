C = gcc
OBJS = main.o manipula_array.o
HDR = manipula_array.h

prog: $(OBJS)
	$(C) -o prog $(OBJS)
main.o: main.c $(HDR)
	$(C) -c main.c
manipula_array.o: manipula_array.s $(HDR)
	$(C) -c manipula_array.s
clear: $(OBJS)
	rm $(OBJS)