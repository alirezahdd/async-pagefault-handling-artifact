CXX = g++
CXXFLAGS = -g -no-pie
SRC_DIR = src
ASM_DIR = src_assembly
SOURCES = $(SRC_DIR)/rnd.cc $(SRC_DIR)/u_benchmark.cc
TARGET = u_benchmark

all: $(TARGET) $(ASM_DIR)/$(TARGET).s

$(TARGET): $(SOURCES)
	$(CXX) $(SOURCES) $(CXXFLAGS) -o $(TARGET)

$(ASM_DIR)/$(TARGET).s: $(TARGET)
	mkdir -p $(ASM_DIR)
	objdump -dS $(TARGET) > $(ASM_DIR)/$(TARGET).s

clean:
	rm -f $(TARGET)

.PHONY: all clean
