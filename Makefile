DESTDIR=/usr/local
ARC=
build: src/emu2d.o
	ar rcs src/libemu2d.a src/emu2d.o
	cp src/libemu2d.a lib/libemu2d.a
	cp src/emu2d.hpp inc/emu2d.hpp

src/emu2d.o: src/emu2d.cpp
	g++ -c -std=c++11 $(ARC) -o src/emu2d.o src/emu2d.cpp 
clean:
	rm -f lib/*.a
	rm -f inc/*.hpp
	rm -f src/*.o
	rm -f src/*.a
install:
	mkdir -p $(DESTDIR)/bin
	mkdir -p $(DESTDIR)/lib
	mkdir -p $(DESTDIR)/include
	cp lib/libemu2d.a $(DESTDIR)/lib/libemu2d.a
	cp inc/emu2d.hpp $(DESTDIR)/include/emu2d.hpp
uninstall:
	rm -f $(DESTDIR)/lib/libemu2d.a
	rm -f $(DESTDIR)/include/emu2d.hpp
