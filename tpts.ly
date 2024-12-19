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
}

\include "cues.ily"
\include "common.ily"
\include "pistonI.ily"
\include "pistonII.ily"

\score {
  <<
  %   \new Staff = "cue" {
  %     \cuevc
  %   }
    \new StaffGroup \with {
      instrumentName = "Pistons"
      midiInstrument = "trumpet"
    }
    <<
      \new Staff = "pIstaff" {
        \context Voice = "pIvc" {
          \transpose c' a \pistonI
        }
      }
      \new Staff = "pIIstaff" {
        \context Voice = "pIIvc" {
          \transpose c' a \pistonII
        }
      }

    >>
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
