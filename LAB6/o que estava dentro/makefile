C = gcc
OBJS = soma.o sum_v3.o adicional.o nova.o
HDRS = soma.h adicional.h nova.h

prog: $(OBJS)
	$(C) -o prog $(OBJS)
soma.o: soma.c soma.h
	$(C) -c soma.c
sum_v3.o: sum_v3.c soma.h
	$(C) -c sum_v3.c
adicional.o: adicional.c adicional.h
	$(C) -c adicional.c
nova.o: nova.c nova.h
	$(C) -c nova.c
clear: $(OBJS)
	rm $(OBJS)