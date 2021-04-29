CPP = c++
file_name = benchmark
source = $(file_name).cpp
object = $(file_name).o
dest = $(file_name)
CFLAGS = -O3 -c -std=c++14
LDFLAGS = -O3

$(dest): $(object)
	$(CPP) $(LDFLAGS) -o $(dest) $(object)

$(object): $(source)
	$(CPP) $(CFLAGS) $(source)
