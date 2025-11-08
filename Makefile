# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -pedantic -std=c99

# Paths
SRC = src/main.c
BUILD_DIR = build
TARGET = $(BUILD_DIR)/kilo

# Default target
all: $(TARGET)

# Build rule
$(TARGET): $(SRC)
	@mkdir -p $(BUILD_DIR)
	$(CC) $(SRC) -o $(TARGET) $(CFLAGS)

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all clean
