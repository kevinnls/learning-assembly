.phony: assemble

assem: assem.o
	gcc -o assem -nostdlib -static assem.o

assem.o: assem.s
	as -o assem.o assem.s
