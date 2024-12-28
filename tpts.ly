showLastLength = s2*24
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

trumpetI = \relative {
   \transposition c'
   \time 4/4
   \key c \major
  \tempo "Modéré"
  \compressEmptyMeasures
  \override MultiMeasureRest.expand-limit = #4

  \partial 8
  r8
  <>-\tweak X-offset #8 \fermata
  R1*8

  \mark #1
  <>-\tweak X-offset #8 \fermata
  R1*8

  \mark #2
  \tempo "Très vite"
  <<
    \new CueVoice {
      \oneVoice
      \quoteDuring "cues" s1
    }
    \context Voice = "tpvc" {
      \voiceTwo
      R1
    }
  >>
  R1*8

  \mark #3
  R1*7

  \section \tempo "Posément" \time 6/8
  R2.*2

  \mark #4
  R2.*8

  \mark #5
  R2.*7

  \mark #6 \section \time 2/4 \tempo \markup {"Mème temps" \tiny { \note { 4 } #UP "=" \note { 4.} #UP }}
  <<
    \new CueVoice {
      \oneVoice
      \quoteDuring "cues" s2*2
    }
    \context Voice = "tpvc" {
      \voiceTwo
      R2*2
    }
  >> \oneVoice
  R2*6
  \tempo "Plus vite"
  <<
    \new CueVoice {
      \oneVoice
      \quoteDuring "cues" { s2*7 s4. }
    }
    \context Voice = "tpvc" {
      \voiceTwo
      R2*7
      r4 r8
    }
  >> \oneVoice
  <>^"Tromp."
  e''8\pp-.

  \mark #7 \section \time 6/8
  cis-. r r r4 r8
  R2.*8

  \mark #8
  R2.*8

  \mark #9
  R2.*7 |

  \mark #10 \section \time 2/4 \tempo \markup {"Mème temps" \tiny { \note { 4 } #UP "=" \note { 4.} #UP }}
  <<
    \new CueVoice {
      \oneVoice
      \quoteDuring "cues" s2*3
    }
    \context Voice = "tpvc" {
      \voiceTwo
      \tweak staff-position #-9 R2*3
    }
  >> \oneVoice
  R2*6

  \mark #11 \section \time 6/8 \tempo "Posément"
  <<
    \new CueVoice {
      \oneVoice
      \quoteDuring "cues" s2.*2
    }
    \context Voice = "tpvc" {
      \voiceOne
      R2.
      \voiceTwo
      R2.
    }
  >> \oneVoice
  R2.*11

  \mark #12
  <<
    \new CueVoice {
      \oneVoice
      \quoteDuring "cues" s2.*9
    }
    \context Voice = "tpvc" {
      \voiceOne
      R2.*5
      \voiceTwo
      R2.*4
    }
  >> \oneVoice <>^"Trp." \afterGrace gis2.\p\<( {a16 ais}

  \mark #13 \section \time 2/4 \tempo "Plus vite"
  h8\f-.) r r4
  r4 r8 a\p(
  d4 e
  fis--) e8\pp-. r
  dis-. r-. d-. r
  cis-. r d-. r
  R2*5
  r4 e8\ppp---. e---.
  e2:8
  e2:8->
  8 8 r e8\ppp-.

  \mark #14
  cis-. r r4
  R2*18

  \mark #15
  R2*12

  \mark #16
  <<
    \new CueVoice {
      \oneVoice
      \quoteDuring "cues" s2*2
    }
    \context Voice = "tpvc" {
      \voiceTwo
      R2*2
    }
  >> \oneVoice
  R2*18

  \mark #17
  R2*12

  \mark #18
  <<
    \new CueVoice {
      \oneVoice
      \quoteDuring "cues" s2*4
    }
    \context Voice = "tpvc" {
      \voiceTwo
      R2*4
    }
  >> \oneVoice
  R2*11
  <<
    \new CueVoice {
      \oneVoice
      \quoteDuring "cues" s2*5
    }
    \context Voice = "tpvc" {
      \voiceTwo
      \repeat percent 4 R2 R2_\markup {\italic "précipitez" }
    }
  >> \oneVoice

  \mark #19 \section \tempo "Très vif"
  <>^"Trp."

}

\score {
  <<
%         \new StaffGroup \with {
%       instrumentName = "Pistons"
%       midiInstrument = "trumpet"
%     }
%     <<
%       \new Staff = "pIstaff" {
%         \context Voice = "pIvc" {
%           \transpose c' a \pistonI
%         }
%       }
%       \new Staff = "pIIstaff" {
%         \context Voice = "pIIvc" {
%           \transpose c' a \pistonII
%         }
%       }
%     >>
    \new StaffGroup \with {
      instrumentName = "Trumpets"
      midiInstrument = "trumpet"
    }
    <<
      \new Staff = "tpIstaff" {
        \context Voice = "tpIvc" {
          \trumpetI
        }
      }
%       \new Staff = "tpIIstaff" {
%         \context Voice = "tpIIvc" {
%           \transpose c' a \trumpetII
%         }
%       }
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
