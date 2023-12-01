# Makefile for assembling and linking an assembly program

# Name of the output executable
OUTPUT = hello_world

# Assembler, assembler flags, linker
NASM = nasm
NASMFLAGS = -f elf64
LD = ld 
LDFLAGS = 

# Assemble and link the program
all: $(OUTPUT)

$(OUTPUT): hello_world.o
	$(LD) $(LDFLAGS) hello_world.o -o $(OUTPUT)


hello_world.o: hello_world.asm
	$(NASM) $(NASMFLAGS) $< -o $@

# Clean up build artifacts
clean:
	rm -f $(OUTPUT) hello_world.o

.PHONY: all clean
