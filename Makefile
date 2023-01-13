output: main.o sum.o
	g++ out/main.o out/sum.o -o out/build/output

sum.o: src/lib/utils/sum.cpp
	g++ -c  src/lib/utils/sum.cpp -o out/sum.o

main.o: src/main.cpp
	g++ -c  src/main.cpp -I src/include -o out/main.o
	
clean:
	rm -r out/*.o