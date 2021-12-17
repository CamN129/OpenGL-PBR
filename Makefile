### begin MACROS
# define compiler
CC=g++

# compilation flags
CFLAGS=-pthread

# define addition librariry (like −lm)
LIBS=-lglfw -lGLU -lGL -lXrandr -lXxf86vm -lXi -lXinerama -lX11 -lrt -ldl

# define sources files to compile
SOURCES=main.cpp

INCLUDE=glad.c

# define the name of the executable
EXEC=main
### end MACROS

### begin targets
build: $(SOURCES) $(EXEC)

$(EXEC): $(SOURCES)
	$(CC) $(CFLAGS) $< $(INCLUDE) $(LIBS) -o $@

### end targets
