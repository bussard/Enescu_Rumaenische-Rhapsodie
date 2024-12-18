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

pistonI = {
  \transposition a'
  \common

  \relative {
    \afterGrace fis'2.\p\<( {g16 gis}

    \mark #13 \section \time 2/4 \tempo "Plus vite"
    a8-.\f) r d-._\markup {\dynamic p \italic "sub."} r
    b-. r a-. r
    f'4( e
    c) cis8-. r
    c!-. r h-. r
    b-. r a-. r
    c4( h!
    c8) r r4
    R2*7

    \mark #14
    R2*9_\markup {\italic "accélérez"}
    \tempo "encore plus vite"
    R2*10

    \mark #15
    R2*12

    \mark #16
    <<
      \new CueVoice {
        \oneVoice
        \quoteDuring "cues" s2*4
      }
      \context Voice = "tpvc" {
        \voiceTwo
        \tweak staff-position #-8
        R2*4
      }
    >> \oneVoice
    R2*16

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
    >> \oneVoice \ottava #0

    \mark #19 \section \tempo "Très vif"
    e8-.\fff-. r e-- r
    r4 e8-- r
    \tuplet 3/2 4 { d8-. e-. f-. d-. e-. f -. }
    g4-- e8-. r
    e-. r e-- r
    r4 e8-- r
    \tuplet 3/2 4 {
      \repeat unfold 2 { d8-. e-. f-. }
      e-. g,-. c-. e-. g-. f-.
    }
    e-. r e-- r
    r4 e8-- r
    \tuplet 3/2 4 {
      \repeat unfold 2 { d-. e-. f-. }
      e-. g\>-. e-. c-. g-. e-.
    }

    \mark #20
    d8\p-. r r4
    R2
    g2:8\<_\markup {\halign #-0.5 "...."}
    c4:8\> g:8
    f8\!-. r r4
    f2:8
    g:8
    \tuplet 3/2 4 { g8\<-. g-. c-. e-. g-. e-. }
    c\ff-. r e-- r
    r4 e8-- r
    R2
    r4 e--
    c8-. r e-- r
    r4 e8-- r
    R2
    r4 e--
  }
}

\score {
  \new Staff = "tpstaff" {
    \context Voice = "tpvc" {
      \pistonI
    }
  }
}
\layout {
  \context {
    \Score
    rehearsalMarkFormatter = #format-mark-box-numbers
    quotedCueEventTypes = #'(note-event rest-event tie-event
                             beam-event tuplet-span-event
                             dynamic-event slur-event
                             articulation-event)
  }
}