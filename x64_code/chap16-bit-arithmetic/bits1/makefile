FILENAME = bits1

$(FILENAME): $(FILENAME).o printb.o
	gcc -o $(FILENAME) $(FILENAME).o printb.o  -no-pie

$(FILENAME).o: $(FILENAME).asm
	nasm -f elf64 -g -F dwarf $(FILENAME).asm -l $(FILENAME).lst

printb: printb.c
	gcc -c printb.c

clean:
	rm -f $(FILENAME) $(FILENAME).o $(FILENAME).lst
