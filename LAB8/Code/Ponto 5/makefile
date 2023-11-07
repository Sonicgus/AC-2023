C = gcc
OBJS = lab8_2.o Funcoes.o

lab8_2: $(OBJS)
	$(C) -o lab8_2 $(OBJS)
lab8_2.o: lab8_2.c
	$(C) -c lab8_2.c
Funcoes.o: Funcoes.s
	$(C) -c Funcoes.s
clear: $(OBJS)
	rm $(OBJS)