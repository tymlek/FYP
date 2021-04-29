CPP = c++
dest = out.exe
CFLAGS =  -c -std=c++14 -O0
LDFLAGS = -O0 -Xlinker -Map=main.map
ASFLAGS = -S -std=c++14 -O0

$(dest): main.o AcmeO2SensorProxy.o AcmeO2Adapter.o UltimateO2SensorProxy.o UltimateO2Adapter.o
	$(CPP) $(LDFLAGS) -o $(dest) main.o AcmeO2SensorProxy.o AcmeO2Adapter.o UltimateO2SensorProxy.o UltimateO2Adapter.o

main.o: main.cpp IO2Sensor.h UltimateO2SensorProxy.h AcmeO2SensorProxy.h
	$(CPP) $(CFLAGS) main.cpp

UltimateO2Adapter.o: UltimateO2SensorProxy.h UltimateO2Adapter.h IO2Sensor.h UltimateO2Adapter.cpp
	$(CPP) $(CFLAGS) UltimateO2Adapter.cpp

UltimateO2SensorProxy.o: UltimateO2SensorProxy.h UltimateO2SensorProxy.cpp
	$(CPP) $(CFLAGS) UltimateO2SensorProxy.cpp

AcmeO2Adapter.o: AcmeO2SensorProxy.h AcmeO2Adapter.h IO2Sensor.h AcmeO2Adapter.cpp
	$(CPP) $(CFLAGS) AcmeO2Adapter.cpp

AcmeO2SensorProxy.o: AcmeO2SensorProxy.h AcmeO2SensorProxy.cpp
	$(CPP) $(CFLAGS) AcmeO2SensorProxy.cpp

assembler: main.cpp
	$(CPP) $(ASFLAGS) main.cpp

objectdump: $(dest)
	objdump -x $(dest) > objectdmp.txt

mem_size: $(dest)
	size $(dest) > memory.txt

benchmark: $(dest)
	./benchmark ./$(dest)