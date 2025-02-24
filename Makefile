CXX = g++
CXXFLAGS = -Wall -std=c++11

TARGET = student_db

OBJ = main.o address.o date.o

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJ)

main.o: main.cpp address.h date.h
	$(CXX) $(CXXFLAGS) -c main.cpp

address.o: address.cpp address.h
	$(CXX) $(CXXFLAGS) -c address.cpp

date.o: date.cpp date.h
	$(CXX) $(CXXFLAGS) -c date.cpp

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(OBJ) $(TARGET)
