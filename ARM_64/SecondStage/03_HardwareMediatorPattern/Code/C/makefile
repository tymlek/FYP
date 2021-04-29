CC = gcc
dest = out.exe
CFLAGS =  -c -std=c11 -O0
LDFLAGS = -O0 -Xlinker -Map=main.map
ASFLAGS = -S -std=c11 -O0

$(dest): main.o RobotArmManager.o Action.o GraspingManipulator.o RotatingArmJoint.o SlidingArmJoint.o
	$(CC) $(LDFLAGS) -o $(dest) main.o RobotArmManager.o Action.o GraspingManipulator.o RotatingArmJoint.o SlidingArmJoint.o

main.o: main.c RobotArmManager.h
	$(CC) $(CFLAGS) main.c

RobotArmManager.o: RobotArmManager.c RobotArmManager.h Action.h GraspingManipulator.h RotatingArmJoint.h SlidingArmJoint.h
	$(CC) $(CFLAGS) RobotArmManager.c

Action.o: Action.h Action.c
	$(CC) $(CFLAGS) Action.c

GraspingManipulator.o: GraspingManipulator.h GraspingManipulator.c
	$(CC) $(CFLAGS) GraspingManipulator.c

RotatingArmJoint.o: RotatingArmJoint.h RotatingArmJoint.c
	$(CC) $(CFLAGS) RotatingArmJoint.c

SlidingArmJoint.o: SlidingArmJoint.h SlidingArmJoint.c
	$(CC) $(CFLAGS) SlidingArmJoint.c

assembler: main.c
	$(CC) $(ASFLAGS) main.c

objectdump: $(dest)
	objdump -x $(dest) > objectdmp.txt

mem_size: $(dest)
	size $(dest) > memory.txt

benchmark: $(dest)
	./benchmark ./$(dest)