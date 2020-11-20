CC = g++	# complier
LD = $(CC)	# command to link objects

EXECS = ASM
OBJS = ASM.o ASMParser.o Instruction.o Opcode.o RegisterTable.o	# all objects

INCDIR = -I../	# additional dirs to look

CCFLAGS = -Wall -std=c++17 $(INCDIR) -g -c	# compiler options
LDFLAGS = -Wall -std=c++17 -g			# linker options

ASM: $(OBJS)
	$(LD) $(LDFLAGS) $(OBJS) -o ASM
ASM.o: ASM.cpp ASMParser.h
	$(CC) $(CCFLAGS) ASM.cpp
ASMParser.o: ASMParser.cpp ASMParser.h
	$(CC) $(CCFLAGS) ASMParser.cpp
Instruction.o: Instruction.cpp Instruction.h
	$(CC) $(CCFLAGS) Instruction.cpp
Opcode.o: Opcode.cpp Opcode.h
	$(CC) $(CCFLAGS) Opcode.cpp
RegisterTable.o: RegisterTable.cpp RegisterTable.h
	$(CC) $(CCFLAGS) RegisterTable.cpp
clean:
	/bin/rm -f $(OBJS) $(EXECS)