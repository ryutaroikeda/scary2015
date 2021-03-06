%{ Entry for Scary 2015 competition by Ryutaro Ikeda %}
\version "2.18.2"
\header {
	title = "The Spirits"
	composer = "Ryutaro Ikeda"
	subtitle = "19 Oct 2015"
}

soprano = \new Voice = "1" {
	\set midiInstrument = #"church organ"
%	\voiceOne
	\relative c'' {
		\set Staff.instrumentName = #"Soprano"
		\clef "treble"
		\time 4/4
		\tempo 4 = 56
		r1 | r1 | r4 ees2 e4 | bes2 r4 bes4 | a2. r4|
		\break
		\time 3/4
		\key bes \minor
		r2. | r2. |
		r2. | r2. |
		r2. | r2. |
		r2 r8 g'16 a | bes8 aes ges f des e |
		ees8 c des ces16 des ees f ges8-. | bes4 aes16 ges f4. |
		aes2 ees4~ | ees4 r8 des8 r4 |
		c16 des ees ges f8 f4.~\startTrillSpan | f2~ f8\stopTrillSpan ees8~ |
		ees2. | r2. |
		r2. | aes4. r8 f8 ees |
		g4 ees8 d4.\fermata \bar "||"

	}
}

mezzosoprano = \new Voice = "2" {
	\set midiInstrument = #"church organ"
%	\voiceTwo
	\relative c'' {
		\set Staff.instrumentName = #"Mez"
		\clef "treble" 
		\time 4/4
		r1 | r4 bes2 a4~ | a2 g2 | g2 r4 e4 | fis2. r4 |
		\break
		\time 3/4
		\key bes \minor
		r2. | r2 r8 d'16 e |
		f8 ees des c aes b | bes8 g aes ges16 bes aes ges f ees |
		e16 f g a bes c bes4 a8 | g16 a bes c d ees d4 c8 |
		c16 d ees f ges f ees8 d r8 | r2 r8 ges,16 fes |
		ees8 f g aes b a | bes8 des b aes bes c16 d |
		ees8 des ces bes ges a | aes8 f ges e r4 |
		r4 r8 des16 ees f ges aes bes | ces8 bes aes g4 ees8 |
		aes4 ges8 f4 c8 | bes16 c d ees f g aes4 e8 |
		f16 g aes bes ces des d4. | ees4. r8 d8 c |
		ees4 c8 b4.\fermata \bar "||"
	}
}

tenor = \new Voice = "3" {
	\set midiInstrument = #"church organ"
%	\voiceThree
	\relative c'' {
		\set Staff.instrumentName = #"Tenor"
		\clef "treble" 
		\time 4/4
		r4 aes4 g2~ | g2. fis4~ | fis1 | e2 r4 cis4 | d2. r8 
		\tempo 4 = 92 
		g16 a |
		\break
		\time 3/4
		\key bes \minor
		bes8 aes ges f des e | ees8 c des bes16 f' ees des c bes |
		aes16 bes c d ees f ges8 f ees | d4 bes8 ees4 des8 |
		c4 g8 f16 g a bes c d | ees4 b8 c16 d ees f ges aes |
		a4. bes4 r8 | r2. |
		r2 r8 ees,-. | ges4 f16 ees d4 d8-. |
		b4 r8 ees4 des8 | c4 aes8 g r4 |
		f'8 c16 des ees8 bes8 r4 | r2. |
		r2. | r4 d16 e f8 ees des |
		c8 aes ces bes4. | c4. r8 b8 a |
		c4 a8 b4.\fermata \bar "||"

	}
}

baritone = \new Voice = "4" {
	\set midiInstrument = #"church organ"
%	\voiceFour
	\relative c' {
		\set Staff.instrumentName = #"Baritone"
		\clef "bass" 
		\time 4/4
		f2. ees4 | des2 c2 | b1 | d,2 r4 g4 | d2. r4 |
		\break
		\time 3/4
		\key bes \minor
		r2. | r2. |
		r2. | r2. |
		r2 r8 a'16 b | c8 bes aes g ees ges |
		f8 d ees bes' aes16 ges f ees | des16 ees f ges aes bes ces8 bes aes |
		g4 bes,8-. ees4 d16 c | bes4 f'8-. bes4 aes16 ges |
		f4 r8 bes,8~ bes4~ | bes2~ bes8 r8 |
		r4 g'16 a bes8 aes ges | f8 des fes ees c des |
		ces16 ees des ces bes aes a bes c d ees f | ees4 d8 c16 d ees f g aes |
		f4 ees8 f16 ees d c b a | aes8 g fis g4.~\fermata |
		g2. \bar "||"

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
