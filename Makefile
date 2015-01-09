all: hello

clean:
	rm hello.o *~

distclean: clean
	rm hello

test: hello
	./hello

hello: hello.o
	g++ hello.o  -o hello

hello.o: hello.cxx hello.h hello_helper.cxx
	g++ -c hello.cxx

