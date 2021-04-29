CPP = c++
file_name = main
source = $(file_name).cpp
object = $(file_name).o
dest = out
map_file = $(file_name).map
CFLAGS =  -c -std=c++14 -O0
LDFLAGS = -O0 -Xlinker -Map=$(map_file) -L/usr/lib -L/usr/lib/arm-linux-gnueabihf /usr/lib/libmysqlcppconn.so /usr/lib/libwiringPi.so /usr/lib/arm-linux-gnueabihf/libmysqlclient.so
ASFLAGS = -S -std=c++14 -O0

$(dest): $(object)
	$(CPP) $(LDFLAGS) -o $(dest) $(object)

$(object): $(source) mcp3008.hpp
	$(CPP) $(CFLAGS) $(source)

assembler: $(source)
	$(CPP) $(ASFLAGS) $(source)
objectdump: $(dest)
	objdump -x $(dest) > objectdmp.txt

mem_size: $(dest)
	size $(dest) > memory.txt

benchmark: $(dest)
	./benchmark ./$(dest)