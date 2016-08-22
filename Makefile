# which compiler to use
# for C compiler define CC = gcc
CC = g++
#compiler flags
# std=c++11 turns pn compatilbity for C++ cersion C++11
# -Wall turns on most compiler warnings
# -Wextra turns on even more warnings
# -Wno-long-long turn off warnings for longlong
# -fexceptions enable exception handling
# -DNDEBUG macro to turn off assertsas mandated by C standard
CFLAGS = -std=c++11 -Wall -Wextra -Wno-long-long -fexceptions -DNDEBUG

TARGET = calculator02buggy

all: $(TARGET)
	
$(TARGET): $(TARGET).cpp
	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).cpp

clean:
	$(RM) $(TARGET)
