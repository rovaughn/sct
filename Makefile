
sct: sct.c
	cc -std=c99 -O2 -I/usr/X11R6/include -o $@ $^ -L/usr/X11R6/lib -lm \
	   -lX11 -lXrandr

night: night.c
	cc -std=c99 -O2 -I/usr/X11R6/include -o $@ $^ -L/usr/X11R6/lib -lm \
	   -lX11 -lXrandr

monochrome: monochrome.c
	cc -std=c99 -O2 -I/usr/X11R6/include -o $@ $^ -L/usr/X11R6/lib -lm \
	   -lX11 -lXrandr

sct.musl: sct.c
	musl-gcc -std=c99 -O2 -march=native -I/usr/X11R6/include -o sct sct.c -L/usr/X11R6/lib -lm -lX11 -lXrandr

