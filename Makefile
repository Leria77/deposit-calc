
.PHONY: 
	all clean 

build/src/main.o: src/main.c src/deposit.h
	gcc -Wall -Werror -c src/main.c -o build/src/main.o 

build/src/deposit.o: src/deposit.c src/deposit.h
	gcc -Wall -Werror -c src/deposit.c -o build/src/deposit.o

bin/deposit-calc: build/src/main.o build/src/deposit.o
	gcc build/src/main.o build/src/deposit.o -o bin/deposit-calc

clean:
	rm -rf build/src/*.o  bin/*.o
