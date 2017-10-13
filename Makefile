INSTALL_DIR=/usr/local
MDLINT_INC=/usr/local/include
ARC=
build: src/emu2d.o
	ar rcs libmdl-emu2d.a src/emu2d.o
	cp libmdl-emu2d.a lib/libmdl-emu2d.a
	cp src/emu2d.hpp inc/mdl

src/emu2d.o: src/emu2d.cpp
	g++ -c -std=c++11 -D__$(ARC) -I$(MDLINT_INC) -o src/emu2d.o src/emu2d.cpp
clean:
	rm -f lib/*.a
	rm -f inc/mdl/*.hpp
	rm -f src/*.o
	rm -f *.a
install:
	mkdir -p $(INSTALL_DIR)/lib
	mkdir -p $(INSTALL_DIR)/include
	mkdir -p $(INSTALL_DIR)/include/mdl
	cp lib/libemu2d.a $(INSTALL_DIR)/lib/libemu2d.a
	cp inc/mdl/emu2d.hpp $(INSTALL_DIR)/include/mdl
uninstall:
	rm -f $(INSTALL_DIR)/lib/libmdl-emu2d.a
	rm -rf $(INSTALL_DIR)/include/mdl
