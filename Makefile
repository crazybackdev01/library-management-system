CXX = g++
CXXFLAGS = -std=c++17 -Wall -Wextra -O2
SRC = src/main.cpp src/Book.cpp src/Member.cpp
TARGET = build/library
all: $(TARGET)
$(TARGET): $(SRC) src/Library.h
mkdir -p build
$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET)
run: $(TARGET)
./$(TARGET)
clean:
rm -rf build/library
.PHONY: all run clean