C = gcc
OBJS = lab8_4.o contachar.o

lab8_4: $(OBJS)
	$(C) -o lab8_4 $(OBJS)
lab8_4.o: lab8_4.c
	$(C) -c lab8_4.c
contachar.o: contachar.s
	$(C) -c contachar.s
clear: $(OBJS)
	rm $(OBJS)