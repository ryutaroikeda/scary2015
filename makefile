SOURCE=$(wildcard *.ly)
TARGET=scary2015.pdf

all: $(TARGET)

$(TARGET): $(SOURCE)
	lilypond $?

