CXX = g++
CC = g++

SRC := src
OBJ := obj

SOURCES := $(wildcard $(SRC)/*.cc)
OBJECTS := $(patsubst $(SRC)/%.cc, $(OBJ)/%.o, $(SOURCES))

sam2pairwise: $(OBJECTS)
	$(CC) $^ -o $@

$(OBJ)/%.o: $(SRC)/%.cc
	@mkdir -p $(OBJ)
	$(CC) -c $< -o $@

.PHONY: test
test:
	@bash ./test/unit_tests.sh

.PHONY: clean
clean:
	rm -f $(obj)/*.o sam2pairwise

