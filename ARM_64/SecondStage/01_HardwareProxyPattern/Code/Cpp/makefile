CPP = c++
dest = out.exe
CFLAGS =  -c -std=c++14 -O0
LDFLAGS = -O0 -Xlinker -Map=main.map
ASFLAGS = -S -std=c++14 -O0

$(dest): main.o MotorProxy.o
	$(CPP) $(LDFLAGS) -o $(dest) main.o MotorProxy.o

main.o: main.cpp MotorProxy.o
	$(CPP) $(CFLAGS) main.cpp

MotorProxy.o: MotorProxy.cpp MotorProxy.h MotorData.h HWProxyExample.h
	$(CPP) $(CFLAGS) MotorProxy.cpp

assembler: main.cpp
	$(CPP) $(ASFLAGS) main.cpp

objectdump: $(dest)
	objdump -x $(dest) > objectdmp.txt

mem_size: $(dest)
	size $(dest) > memory.txt

benchmark: $(dest)
	./benchmark ./$(dest)