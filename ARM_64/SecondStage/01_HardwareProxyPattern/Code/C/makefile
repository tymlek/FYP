CC = gcc
dest = out.exe
CFLAGS =  -c -std=c11 -O0
LDFLAGS = -O0 -Xlinker -Map=main.map
ASFLAGS = -S -std=c11 -O0

$(dest): main.o MotorProxy.o
	$(CC) $(LDFLAGS) -o $(dest) main.o MotorProxy.o

main.o: main.c MotorProxy.h
	$(CC) $(CFLAGS) main.c

MotorProxy.o: MotorProxy.h MotorData.h HWProxyExample.h MotorProxy.c
	$(CC) $(CFLAGS) MotorProxy.c

assembler: main.c
	$(CC) $(ASFLAGS) main.c

objectdump: $(dest)
	objdump -x $(dest) > objectdmp.txt

mem_size: $(dest)
	size $(dest) > memory.txt

benchmark: $(dest)
	./benchmark ./$(dest)