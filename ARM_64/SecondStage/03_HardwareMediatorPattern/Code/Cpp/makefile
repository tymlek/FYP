CPP = c++
dest = out.exe
CFLAGS =  -c -std=c++14 -O0
LDFLAGS = -O0 -Xlinker -Map=main.map
ASFLAGS = -S -std=c++14 -O0

$(dest): main.o RobotArmManager.o GraspingManipulator.o RotatingArmJoint.o SlidingArmJoint.o
	$(CPP) $(LDFLAGS) -o $(dest) main.o RobotArmManager.o GraspingManipulator.o RotatingArmJoint.o SlidingArmJoint.o

main.o: main.cpp RobotArmManager.h
	$(CPP) $(CFLAGS) main.cpp

RobotArmManager.o: RobotArmManager.cpp RobotArmManager.h Action.h GraspingManipulator.h RotatingArmJoint.h SlidingArmJoint.h
	$(CPP) $(CFLAGS) RobotArmManager.cpp

GraspingManipulator.o: GraspingManipulator.h GraspingManipulator.cpp
	$(CPP) $(CFLAGS) GraspingManipulator.cpp

RotatingArmJoint.o: RotatingArmJoint.h RotatingArmJoint.cpp
	$(CPP) $(CFLAGS) RotatingArmJoint.cpp

SlidingArmJoint.o: SlidingArmJoint.h SlidingArmJoint.cpp
	$(CPP) $(CFLAGS) SlidingArmJoint.cpp

assembler: main.cpp
	$(CPP) $(ASFLAGS) main.cpp

objectdump: $(dest)
	objdump -x $(dest) > objectdmp.txt

mem_size: $(dest)
	size $(dest) > memory.txt

benchmark: $(dest)
	./benchmark ./$(dest)