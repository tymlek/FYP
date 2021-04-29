CC = gcc
file_name = main
source =$(file_name).c
object = $(file_name).o
dest = out
map_file = $(file_name).map
CFLAGS =  -c -std=c11 -O0
LDFLAGS = -O0 -Xlinker -Map=$(map_file)
ASFLAGS = -S -std=c11 -O0

$(dest): $(object)
	$(CC) $(LDFLAGS) -o $(dest) $(object)

$(object): $(source)
	$(CC) $(CFLAGS) $(source)

assembler: $(source)
	$(CC) $(ASFLAGS) $(source)

objectdump: $(dest)
	objdump -x $(dest) > objectdmp.txt

mem_size: $(dest)
	size $(dest) > memory.txt

benchmark: $(dest)
	./benchmark ./$(dest)