SOURCE=scary2015.ly
MIDI=scary2015.midi
SOUNDFONT?=/usr/share/sounds/sf2/HeavenChoir.sf2
TARGET=scary2015.wav
all: $(TARGET) 

$(TARGET): $(MIDI)
	fluidsynth -F $@ $(SOUNDFONT) $<

$(MIDI): $(SOURCE)
	lilypond $<

