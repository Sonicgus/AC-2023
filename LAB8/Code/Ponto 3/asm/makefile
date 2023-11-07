C = gcc
OBJS = lab8_3.o polycalc.o

lab8_3: $(OBJS)
	$(C) -o lab8_3 $(OBJS)
lab8_3.o: lab8_3.c
	$(C) -c lab8_3.c
polycalc.o: polycalc.s
	$(C) -c polycalc.s
clear: $(OBJS)
	rm $(OBJS)