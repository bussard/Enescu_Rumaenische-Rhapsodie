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
pistonII = {
  \transposition a'
  \common |
  <>^"Pist."
  \relative {
    \afterGrace dis'2.\p\<( { e8 }

    \mark #13 \section \time 2/4 \tempo "Plus vite"

    f8-.\f) r a-._\markup {\dynamic p \italic "sub."} r
    g-. r f-. r
    a4( b
    a) g8\pp-. r
    fis-. r f-. r
    e-. r f-. r
    f2(
    e8) r r4
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
      \context Voice = "pIIvc" {
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
      \context Voice = "pIIvc" {
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
      \context Voice = "pIIvc" {
        \voiceTwo
        \repeat percent 4 R2 R2_\markup {\italic "précipitez" }
      }
    >> \oneVoice \ottava #0

    \mark #19 \section \tempo "Très vif"
    c'8-.\fff-. r c-- r
    r4 c8-- r
    \tuplet 3/2 4 { g8-. c-. d-. g,-. c-. d -. }
    e4-- c8-. r
    c-. r c-- r
    r4 c8-- r
    \tuplet 3/2 4 {
      g8-. c-. d-. h-. c-. d-.
      c-. e,-. g-. c-. e-. d-.
    }
    c-. r c-- r
    r4 c8-- r
    \tuplet 3/2 4 { \repeat unfold 2 { g-. c-. d-. }}
    e4-- c8-. r
    c-. r c-- r
    r4 c8-- r
    \tuplet 3/2 4 {
      g-. c-. d-. h-. c-. d-.
      c-. e\>-. c-. g-. e-. c-.
    }

    \mark #20
    a8\p-. r r4
    R2
    g'2:8\<_\markup {\halign #-0.5 "...."}
    e4:8\> e:8
    d8\!-. r r4
    d2:8
    f:8
    \tuplet 3/2 4 { e8\<-. g-. e-. g-. c-. g-. }
    e\ff-. r c'-- r
    r4 c8-- r
    R2
    r4 c--
    e,8-. r c'-- r
    r4 c8-- r
    R2
    r4 c--

    \mark #21
    R2*8
    <<
      \new CueVoice {
        \oneVoice
        \quoteDuring "cues" { s2*5 s4 }
      }
      \context Voice = "pIIvc" {
        \voiceTwo
        R2*5
        r4
      }
    >> \oneVoice h8\sff-.-\tweak self-alignment-X #0 ^"Pist." r

    \mark #22
    R2*12
    <<
      \new CueVoice {
        \oneVoice
        \quoteDuring "cues" s2*4
      }
      \context Voice = "pIIvc" {
        \voiceTwo
        R2*4
      }
    >> \oneVoice

    \mark #23
    <>\ff
    \repeat unfold 4 {
      e,2--~
      2
    }
    \repeat unfold 2 {
      c2--~
      2
    }
    \after 4\>
    c2--~
    2~
    2~
    2
    <>\p\<
    \repeat unfold 4 { c4-- 4 }
    c2\ff--~
    2~
    2~
    2

%     \mark #24
%     g8\sff-. r r4
%     g\mp-- r
%     \repeat unfold 3 {
%       R2
%       g4-- r
%     }
%     R2*4
%     g2\p\<~
%     2~
%     2~
%     2
%     \startMeasureCount
%     g2\!_\markup {\dynamic pp \italic "sub."}~
%     2~
%     2~
%     2~
%     2~
%     2 \stopMeasureCount
%     R2*2
%     \startMeasureCount
%     e2\p~
%     2~
%     2~
%     2~
%     2~
%     2 \stopMeasureCount
%     R2*2
%
%     \mark #26
%     c'2\mf\<~
%     2~
%     2
%     R2\!
%     c2\ff--~
%     2~
%     2~
%     2
%     <>\mf\<
%     \repeat percent 4 { a4-- a-- }
%     a2\ff--~
%     2~
%     2~
%     \after 8 \>
%     2
%
%     \mark #27
%     a8\ff-. r r4
%     a4\mp-- r
%     \after 2*3 \>
%     \repeat unfold 3 {
%       R2
%       a4-- r
%     }
%     as2\p--~
%     2\<
%     2--~
%     2
%
%     \mark #28
%     g8\f-. r g4\mp--
%     \startMeasureCount
%     \after 2*3 \dim
%     \repeat percent 7 { r4 g-- } <>\! \stopMeasureCount
%     R2*8
%
%     \mark #29
%     <>\ppp
%     \startMeasureCount
%     \repeat unfold 7 { g2~ }
%     g2 \stopMeasureCount
%     R2*11
%     <<
%       \new CueVoice {
%         \oneVoice
%         \quoteDuring "cues" s2*3
%       }
%       \context Voice = "pIIvc" {
%         \voiceTwo
%         R2*3
%       }
%     >> \oneVoice
%     \tuplet 3/2 4 {
%       c8\pp-. g-. e-. g\<-. c-. e-.
%       c-. g-. e-. c-.  g'-. c-.
%     }
%
%     \mark #30
%     e8\ff-. r e-- r
%     r4 e8-- r
%     \tuplet 3/2 4 { d8-. e-. f-. d-. e-. f-. }
%     g4-- e8-. r
%     e-. r e-- r
%     r4 e8-- r
%     \tuplet 3/2 4 {
%       d8-. e-. f-. d-. e-. f-.
%       e-. g,-. c-. e-. g-. f-.
%     }
%     f-. r r4
%     R2*7
%
%     \mark #31
%     <<
%       \new CueVoice {
%         \oneVoice
%         \quoteDuring "cues" s2*2
%       }
%       \context Voice = "pIIvc" {
%         \voiceTwo
%         R2*2
%       }
%     >> \oneVoice
%     g,8\p\<-. g-. g-. g-.
%     c\> c g g
%     f\! r r4
%     f2:8
%     g:8
%     g8 r r4
%     b8._\markup {\dynamic fff \italic cassant}-. 16-. 8-. 8-.
%     8-. 8-. 4--
%     \tuplet 3/2 4 { ges8( a b) b( a ges) }
%     a4-.-- b-.--
%     c8.-. 16-. 8-. 8-.
%     8-. 8-. 4--
%     \tuplet 3/2 4 { f,8( ges as) as( ges f) }
%     es-- r f'\sff-. r
%
%     \mark #32
%     R2*11
%
%     \mark #33
%     R2*6
%     <<
%       \new CueVoice {
%         \oneVoice
%         \quoteDuring "cues" s2*4
%       }
%       \context Voice = "pIIvc" {
%         \voiceTwo
%         R2*4
%       }
%     >> \oneVoice
%     es8.\fff-. 16-. 8-. 8-.
%     8-. 8-. 4--
%     \tuplet 3/2 4 { ges,8( a? b) b( a ges) }
%     a-- r f'8-. 16-. 16-.
%     8-. 8-. 4--
%     \tuplet 3/2 4 { f,8( ges as) as( ges f) }
%     es-- r fis'\sff-. r
%
%     \mark #34
%     R2*20
%
%     \after 2*2 \mark #35
%     <<
%       \new CueVoice {
%         \oneVoice
%         \quoteDuring "cues" s2*4
%       }
%       \context Voice = "pIIvc" {
%         \voiceTwo
%         R2*4
%       }
%     >> \oneVoice
%     h,!8-. c-. d-. es-.
%     f-. es-. f-. es-.
%     f-. es-. d-. c-.
%     d4-.-- g8-.-> r
%     R2*7
%     <<
%       \new CueVoice {
%         \oneVoice
%         \quoteDuring "cues" s2*2
%       }
%       \context Voice = "pIIvc" {
%         \voiceTwo
%         R2*2
%       }
%     >> \oneVoice
%     r4 r8. h,32\ff-. 32-.
%     \tuplet 3/2 4 {
%       8-. d-. h-. g-. h-. d-.
%       h-. g-. h-. d-. h-. d-.
%       h-. g-. h-. d-. g-. d-.
%     }
%
%     \mark #36
%     f!2--~
%     2
%     2--~
%     2
%     c--~
%     2
%     c--~
%     2
%     d\>~
%     2~
%     2~
%     2~
%     2\mp
%     c4--\< as--
%     4-- 4--
%     4-- 4--
%     g2\ff--~
%     2~
%     2~
%     2
%
%     \mark #37
%     \repeat unfold 2 { g8\sff-. r r4 }
%     \repeat unfold 3 { R2 g8\sff-. r r4 }
%     R2*8
%     \startMeasureCount
%     c2\f~
%     2~
%     2~
%     2\<~
%     2~
%     2 \stopMeasureCount
%     R2*2\!
%
%     \mark #38
%     \startMeasureCount
%     c2\fff~
%     2~
%     2~
%     2~
%     2~
%     2 \stopMeasureCount
%     \startMeasureCount
%     c,2~
%     2~
%     2~
%     2~
%     2~
%     2 \stopMeasureCount
%     R2*3
%
%     \mark #39
%     R2*4
%     as''8.\ff-. 16-. 8-. 8-.
%     8-. 8-. 4--
%     \tuplet 3/2 4 { ces,8( d es) es( d ces) }
%     d4-.-- f8-.-- r
%     e!8.-. 16-.8-. 8-.
%     es-. r \tuplet 3/2 { ces( d es) }
%     \tuplet 3/2 { es( d ces) } fes-. r
%     f! r d8\fff-. 16-. 16-.
%     8-. 8-. 4--
%     \tuplet 3/2 4 { d8( es f) f( es d) }
%     R2\fermata_\markup {\italic "long"}
%
%     \tempo "Allègrement" \section \time 2/2
%     e,4\pp-. r e-. r
%     e-. r g-. r
%     f-. r g-. r
%     g-. r e-. r
%     e-. r f-. r
%     e-. r e-. r
%     g-. r g-. r
%     c2-> b4-. r
%     b-. r b-. r
%     b-. r b-._\markup{\italic "augmentez"} r
%     b-. r b-. r
%     g-. r b-. r
%     b-. r b-. r
%     b-. r b-. r
%     b-. g-. g2->
%
%     \mark #40
%     g4\mf-. r g-. r
%     g-. r g-. r
%     g-. r g-. h!
%     c-. f,-. e2-\tweak to-barline ##f \>->~
%
%     \section \time 2/4 \tempo "Très vif"
%     e2\p~
%     2_\markup{\italic "augmentez et pressez"}~
%     2~
%     2
%     g2--~
%     2~
%     2\<~
%     2
%
%     \mark #41
%     <>\ff-\tweak outside-staff-priority #0 _\markup{\halign #-0.5 "......"}
%     \repeat percent 4 { \tuplet 6/4 4 { g2.:8 } }
%     c2--~
%     2~
%     2~
%     2 \breathe
%     g--~
%     2~
%     2~
%     2 \breathe
%     e'2\fff--\fermata_\markup{\halign #0 \italic "très long"}
%     \fine
  }
}


\score {
<<
%   \new Staff = "cue" {
%     \cuevc
%   }
  \new StaffGroup \with {
    instrumentName = "Pistons"
  }
  <<
%     \new Staff = "pIstaff" {
%       \context Voice = "pIvc" {
%         \transpose c c \pistonI
%       }
%     }
    \new Staff = "pIIstaff" {
      \context Voice = "pIIvc" {
        \transpose c c \pistonII
      }
    }

  >>
>>
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