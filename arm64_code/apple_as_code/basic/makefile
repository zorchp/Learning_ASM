FILENAME = basic

$(FILENAME): $(FILENAME).o
	ld $(FILENAME).o -o $(FILENAME)

$(FILENAME).o: $(FILENAME).s
	as $(FILENAME).s -o $(FILENAME).o

clean:
	rm $(FILENAME).o $(FILENAME)
