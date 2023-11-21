C = gcc
OBJS = main.o bin_img.o

main: $(OBJS)
	$(C) -o main $(OBJS)
main.o: main.c
	$(C) -c main.c
bin_img.o: bin_img.s
	$(C) -c bin_img.s
clear: $(OBJS)
	rm $(OBJS)