#VARIÁVEIS
CXX := g++
CXXFLAGS := -Wall -std=c++11

#DIRETÓRIOS
SRC := src
OBJ := obj
BIN := bin
INCLUDE := include

#ARQUIVOS
SOURCES := $(wildcard $(SRC)/*.cpp)
OBJECTS := $(SOURCES:$(SRC)/%.cpp=$(OBJ)/%.o)
EXECUTABLE := $(BIN)/template_executable #Colocar o nome do executável

#REGRAS
all: $(EXECUTABLE)


$(EXECUTABLE): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -I$(INCLUDE) $^ -o $@

$(OBJ)/%.o: $(SRC)/%.cpp
	$(CXX) $(CXX_FLAGS) -I$(INCLUDE) -c $< -o $@

run: $(EXECUTABLE)
	./$(EXECUTABLE)

clean:
	rm -f $(OBJECTS) $(EXECUTABLE)