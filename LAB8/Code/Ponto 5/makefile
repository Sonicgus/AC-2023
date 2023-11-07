C = gcc
OBJS = lab8_5.o Funcoes.o

lab8_5: $(OBJS)
	$(C) -o lab8_5 $(OBJS)
lab8_5.o: lab8_5.c
	$(C) -c lab8_5.c
Funcoes.o: Funcoes.s
	$(C) -c Funcoes.s
clear: $(OBJS)
	rm $(OBJS)