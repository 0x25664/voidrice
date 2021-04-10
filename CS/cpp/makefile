CFLAGS   = -Os -Wall
CXXFLAGS = -Os -Wall
CXX      = clang++
CC       = clang
install: *.h
	$(CXX) $(CXXFLAGS) main.cpp book.cpp reader.cpp -o main.o
clean:
	-rm *.o $(objects)
