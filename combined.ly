%showLastLength = s2*24
\version "2.24.3"
\language "deutsch"

\paper {
  paper-height = 297\mm
  paper-width = 210\mm
}

\header {
  title = "1. Rumänische Rhapsodie"
  subtitle = "in A-Dur"
  composer = "Georges Enescu"
  opus = "Op. 11"
  tagline = ##f
  poet = "Trompete II / Piston II in C"
}

irgendwas = \relative { c4 d e f g a h c }
\include "cues.ily"
\include "common.ily"
\include "pistonI.ily"
\include "pistonII.ily"
\include "trumpetI.ily"
\include "trumpetII.ily"
\include "combinedI.ily"
\include "combinedII.ily"

\score {

    \new StaffGroup \with {
      midiInstrument = "trumpet"
    }
    <<
      \new Staff = "tIStaff" {
        \context Voice = "tI" {
          \combI
        }
      }
      \new Staff = "tIIStaff" {
        \context Voice = "tII" {
          \combII
        }
      }
    >>



  \layout {
    \context {
      \Score
      rehearsalMarkFormatter = #format-mark-box-numbers
    }
    \context {
      \Staff
      \consists Measure_counter_engraver
      \override MeasureCounter.font-size = #-5
    }
  }
  \midi {}
}
