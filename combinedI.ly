%showLastLength = s2*24
\version "2.24.3"
\language "deutsch"

\paper {
  paper-height = 297\mm
  paper-width = 210\mm
  top-margin = 16\mm
  bottom-margin = 20\mm
}

\header {
  title = "1. Rumänische Rhapsodie"
  subtitle = "in A-Dur"
  composer = "Georges Enescu"
  opus = "Op. 11"
  tagline = ##f
  poet = "Trompete I / Piston I in C"
}

\include "cues.ily"
\include "common.ily"
\include "pistonI.ily"
\include "pistonII.ily"
\include "trumpetI.ily"
\include "trumpetII.ily"
\include "combinedI.ily"
\include "combinedII.ily"

\score {

  \new Staff = "tIStaff" {
    \context Voice = "tI" {
      \combI
    }
  }



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
