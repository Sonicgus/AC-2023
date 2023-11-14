C = gcc
OBJS = main_2.o manipula_tabela.o

prog: $(OBJS)
	$(C) -o prog $(OBJS)
main_2.o: main_2.c
	$(C) -c main_2.c
manipula_tabela.o: manipula_tabela.s
	$(C) -c manipula_tabela.s
clear: $(OBJS)
	rm $(OBJS)