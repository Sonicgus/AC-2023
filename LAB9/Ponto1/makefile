C = gcc
OBJS = main_1.o mandelbrot.o

main_1: $(OBJS)
	$(C) -o main_1 $(OBJS)
main_1.o: main_1.c
	$(C) -c main_1.c
mandelbrot.o: mandelbrot.s
	$(C) -c mandelbrot.s
clear: $(OBJS)
	rm $(OBJS)