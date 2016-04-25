build:
	ghc -O -o Fib Fib.hs
	ghc -O -o Main Main.hs
clean:
	rm -f Main
	rm -f *.hi
	rm -f *.o
run:
	./Main 20000000 +RTS -s
