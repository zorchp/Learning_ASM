FILENAME = memory

$(FILENAME): $(FILENAME).o
	gcc -o $(FILENAME) $(FILENAME).o -no-pie

$(FILENAME).o: $(FILENAME).asm
	nasm -f elf64 -g -F dwarf $(FILENAME).asm -l $(FILENAME).lst

clean:
	rm -f $(FILENAME) $(FILENAME).o $(FILENAME).lst
