C = gcc
OBJS = main_2.o potencia.o
HDRS = potencia.h

prog: $(OBJS)
	$(C) -o prog $(OBJS)
main_2.o: main_2.c potencia.h
	$(C) -c main_2.c
potencia.o: potencia.s potencia.h
	$(C) -c potencia.s
clear: $(OBJS)
	rm $(OBJS)