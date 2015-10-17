%{ Entry for Scary 2015 competition by Ryutaro Ikeda %}
\version "2.18.2"
\header {
	title = "Untitled"
	composer = "Ryutaro Ikeda"
	subtitle = "16 Oct 2015"
}

soprano = \new Voice = "1" {
	\set midiInstrument = #"choir aahs"
%	\voiceOne
	\relative c'' {
		\set Staff.instrumentName = #"Soprano"
		\clef "treble"
		\time 4/4
		\tempo 4 = 54
		r1 | r1 | r4 ees2\pp\< e4 | bes2\mf\! r4 bes4 | a2. r4|
		\break
		\time 3/4
		\key bes \minor
		r2. | r2. |
		r2. | r2. |
		r2. | r2. |
		r2 r8 f'16 g | aes8
	}
}

mezzosoprano = \new Voice = "2" {
	\set midiInstrument = #"choir aahs"
%	\voiceTwo
	\relative c'' {
		\set Staff.instrumentName = #"Mez"
		\clef "treble" 
		\time 4/4
		r1 | r4 bes2\pp a4~ | a2\< g2 | g2\mf\! r4 e4 | fis2. r4 |
		\break
		\time 3/4
		\key bes \minor
		r2. | r2 r8 c'16 d |
	  ees8 des ces! bes ges a | aes8 f ges fes16 aes ges fes ees des |
		d16 ees f g aes bes aes4 g8 | f16 g aes bes c des c4 bes8 |
		bes16 c des ees fes ees des8 c8
	}
}

tenor = \new Voice = "3" {
	\set midiInstrument = #"choir aahs"
%	\voiceThree
	\relative c'' {
		\set Staff.instrumentName = #"Tenor"
		\clef "treble" 
		\time 4/4
		r4 aes4\pp g2~ | g2. fis4~ | fis1\< | e2\mf\! r4 cis4 | d2. r8 
		\tempo 4 = 108 g16 a |
		\break
		\time 3/4
		\key bes \minor
		bes8 aes ges f des e | ees c des bes16 ees des c bes aes |
		ges16 aes bes ces des ees fes8 ees des | c4 aes8 des4 b8 |
		bes4 f8 ees16 f g aes bes c | des4 a8 bes16 c des ees fes ges |
		g4. aes
	}
}

baritone = \new Voice = "4" {
	\set midiInstrument = #"choir aahs"
%	\voiceFour
	\relative c' {
		\set Staff.instrumentName = #"Baritone"
		\clef "bass" 
		\time 4/4
		f2.\pp ees4 | cis2 c2 | b1\< | d,2\mf\! r4 g4 | d2. r4 |
		\break
		\time 3/4
		\key bes \minor
		r2. | r2. |
		r2. | r2. |
		r2 r8 g16 a | bes8 aes ges f des e |
		ees8 c des aes' ges16 fes ees des | b16 cis d e fis gis a8 gis fis |
	}
}

\score {
\layout{}
\midi{
	\context {
		\Staff
		\remove "Staff_performer"
	}
	\context {
		\Voice
		\consists "Staff_performer"
	}
}

\new ChoirStaff <<
	\soprano
	\mezzosoprano
	\tenor
	\baritone
>>
}
