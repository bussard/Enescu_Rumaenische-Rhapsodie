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
  \ottava #0

  \mark #19 \section \tempo "Très vif"
  <>^"Trp."
  \relative {
    \grace {g''16( gis} a8\fff-.) r e,-- r
    \repeat unfold 3 { r4 e8-- r }
    a'-. r e,-- r
    \repeat unfold 2 { r4 e8-- r }
    e4-- r
    a'8-. r e,-- r
    \repeat unfold 3 { r4 e8-- r }
    a'8-. r e,-- r
    \repeat unfold 2 { r4 e8-- r }
    e4-- r

    \mark #20
    \repeat unfold 2 {
      h'8.-- 16-. 8-- 8--
      4.-- r8
      R2*2
    }
    a'8\ff-. r e,-- r
    r4 e8-- r
    R2
    r4 e--
    a'8-. r e,-- r
    r4 e8-- r
    R2
    r4 e--
  }

  \mark #21
  R2*10
  <<
    \new CueVoice {
      \oneVoice
      \quoteDuring "cues" { s2*3 s4 }
    }
    \context Voice = "tpvc" {
      \voiceTwo
      R2*3
      r4
    }
  >> \oneVoice <>^"Trp." e8\sff-. r

  \mark #22
  R2*14
  <<
    \new CueVoice {
      \oneVoice
      \quoteDuring "cues" { s2*2 }
    }
    \context Voice = "tpvc" {
      \voiceTwo
      R2*2
    }
  >> \oneVoice

  \mark #23
  <>^"Trp."
  \relative {
     \acciaccatura dis''8 e2\ff--~
     e
     \repeat unfold 3 {
       e--~
       e
     }
     \repeat unfold 2 {
       d--~
       2
     }
     \after 4 \>
     d--~
     2~
     2~
     2
     d4\p--\< 4--
     4-- 4--
     4-- 4--
     4-- 4--
     cis2\ff--~
     2~
     2~
     2

     \mark #24
     c!8\sff-. r r4
     a,4\mp-- r
     R2
     a4-- r
     dis'8\mf-. e-. h-. c-.
     dis-. e-. fis-. g-.
     dis-. e-. h-. c-.
     dis-. e-. fis-. g-.
     R2*4
     c,,2\p\<~
     2~
     2~
     2

     \mark #25
     \startMeasureCount
     cis2\!_\markup {\dynamic pp \italic sub.}~
     2~
     2~
     2~
     2~
     2 \stopMeasureCount
     R2*2
     \startMeasureCount
     a'2\p~
     2~
     2~
     2~
     2~
     2 \stopMeasureCount
     R2*2

     \mark #26
     cis2\mf\<~
     2~
     2
     R2\!
     e2\ff--~
     2~
     2~
     2
     d4\mf\<-- 4--
     4-- 4--
     4-- 4--
     4-- 4--
     2\ff--~
     2~
     2~
     \after 4 \> 2

     \mark #27
     d8\f-. r r4
     d,\mp-- r
     R2
     d4-- r
     R2
     d4\> r
     R2
     d4-- r\!
     d'2\p\<--~
     2
     2--~
     2

     \mark #28
     c8\f-. r a,4\mp--


  }
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
