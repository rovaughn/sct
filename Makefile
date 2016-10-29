
sct: sct.c
	cc -std=c99 -O2 -I/usr/X11R6/include -o sct sct.c -L/usr/X11R6/lib -lm \
	   -lX11 -lXrandr

sct.musl: sct.c
	musl-gcc -std=c99 -O3 -I/usr/X11R6/include -o sct.musl sct.c -L/usr/X11R6/lib -lm -lX11 -lXrandr

