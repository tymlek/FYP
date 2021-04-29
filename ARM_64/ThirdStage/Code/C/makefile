CC = gcc
file_name = main
source =$(file_name).c
object = $(file_name).o
dest = out
map_file = $(file_name).map
CFLAGS =  -c -std=c11 -O0
LDFLAGS = -O0 -Xlinker -Map=$(map_file) -L/usr/lib -L/usr/lib/arm-linux-gnueabihf /usr/lib/libwiringPi.so /usr/lib/arm-linux-gnueabihf/libmysqlclient.so
ASFLAGS = -S -std=c11 -O0

$(dest): $(object)
	$(CC) $(LDFLAGS) -o $(dest) $(object) -lm

$(object): $(source) mcp3008.h
	$(CC) $(CFLAGS) $(source)

assembler: $(source)
	$(CC) $(ASFLAGS) $(source)

objectdump: $(dest)
	objdump -x $(dest) > objectdmp.txt

mem_size: $(dest)
	size $(dest) > memory.txt

benchmark: $(dest)
	./benchmark ./$(dest)