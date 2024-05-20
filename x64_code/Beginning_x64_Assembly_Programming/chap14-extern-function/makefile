FILENAME = function4
F1 = circle
F2 = rect

$(FILENAME): $(FILENAME).o $(F1).o $(F2).o
	gcc -g -o $(FILENAME) $(FILENAME).o $(F1).o $(F2).o  -no-pie

$(FILENAME).o: $(FILENAME).asm
	nasm -f elf64 -g -F dwarf $(FILENAME).asm -l $(FILENAME).lst
$(F1).o: $(F1).asm
	nasm -f elf64 -g -F dwarf $(F1).asm -l $(F1).lst
$(F2).o: $(F2).asm
	nasm -f elf64 -g -F dwarf $(F2).asm -l $(F2).lst

clean:
	rm -f $(FILENAME) $(FILENAME).o $(FILENAME).lst
	rm -f $(F1) $(F1).o $(F1).lst
	rm -f $(F2) $(F2).o $(F2).lst
