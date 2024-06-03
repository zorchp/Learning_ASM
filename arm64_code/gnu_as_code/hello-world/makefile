FILENAME = helloworld

$(FILENAME): $(FILENAME).o
	ld -o $(FILENAME) $(FILENAME).o 

$(FILENAME).o: $(FILENAME).s
	as -o $(FILENAME).o $(FILENAME).s

clean:
	rm -f $(FILENAME) $(FILENAME).o 
