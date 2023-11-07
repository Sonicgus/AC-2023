C = gcc
OBJS = main.o bin_img.o

binariza: $(OBJS)
	$(C) -o binariza $(OBJS)
main.o: main.c
	$(C) -c main.c
bin_img.o: bin_img.c
	$(C) -c bin_img.c
clear: $(OBJS)
	rm $(OBJS)