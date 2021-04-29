CC = gcc
dest = out.exe
CFLAGS =  -c -std=c11 -O0
LDFLAGS = -O0 -Xlinker -Map=main.map
ASFLAGS = -S -std=c11 -O0

$(dest): main.o AcmeO2SensorProxy.o AcmeO2Adapter.o UltimateO2Adapter.o IO2Sensor.o
	$(CC) $(LDFLAGS) -o $(dest) main.o AcmeO2SensorProxy.o AcmeO2Adapter.o UltimateO2Adapter.o IO2Sensor.o

main.o: main.c IO2Sensor.h UltimateO2SensorProxy.h AcmeO2SensorProxy.h
	$(CC) $(CFLAGS) main.c

IO2Sensor.o: IO2Sensor.h AcmeO2Adapter.h UltimateO2Adapter.h IO2Sensor.c
	$(CC) $(CFLAGS) IO2Sensor.c

UltimateO2Adapter.o: UltimateO2SensorProxy.h UltimateO2Adapter.h UltimateO2Adapter.c
	$(CC) $(CFLAGS) UltimateO2Adapter.c

AcmeO2Adapter.o: AcmeO2SensorProxy.h AcmeO2Adapter.h AcmeO2Adapter.c
	$(CC) $(CFLAGS) AcmeO2Adapter.c

AcmeO2SensorProxy.o: AcmeO2SensorProxy.h AcmeO2SensorProxy.c
	$(CC) $(CFLAGS) AcmeO2SensorProxy.c

assembler: main.c
	$(CC) $(ASFLAGS) main.c

objectdump: $(dest)
	objdump -x $(dest) > objectdmp.txt

mem_size: $(dest)
	size $(dest) > memory.txt

benchmark: $(dest)
	./benchmark ./$(dest)