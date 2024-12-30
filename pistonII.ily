\version "2.24.3"

pistonII = {
  \transposition a'

  \transpose c' a \common |
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
        \quoteDuring "cuesA" s2*4
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
        \quoteDuring "cuesA" s2*4
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
        \quoteDuring "cuesA" s2*5
      }
      \context Voice = "pIIvc" {
        \voiceTwo
        \repeat percent 4 R2 R2_\markup {\italic "précipitez" }
      }
    >> \oneVoice \ottava #0

    \mark #19 \section \tempo "Très vif"
    \grace s8 c'8-.\fff-. r c-- r
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
        \quoteDuring "cuesA" { s2*5 s4 }
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
        \quoteDuring "cuesA" s2*4
      }
      \context Voice = "pIIvc" {
        \voiceTwo
        R2*4
      }
    >> \oneVoice

    \mark #23
    \grace s8 <>\ff
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

    \mark #24
    c8\sff-. r r4
    es\mp-- r
    \repeat unfold 3 {
      R2
      es4-- r
    }
    R2*4
    es2\p\<~
    2~
    2~
    2

    \mark #25
    \startMeasureCount
    e!2\!_\markup {\dynamic pp \italic "sub."}~
    2~
    2~
    2~
    2~
    2 \stopMeasureCount
    R2*2
    \startMeasureCount
    c2\p~
    2~
    2~
    2~
    2~
    2 \stopMeasureCount
    R2*2

    \mark #26
    g'2\mf\<~
    2~
    2
    R2\!
    e2\ff--~
    2~
    2~
    2
    <>\mf\<
    \repeat percent 4 { c4-- c-- }
    c2\ff--~
    2~
    2~
    \after 8 \>
    2

    \mark #27
    d8\ff-. r r4
    f4\mp-- r
    \after 2*3 \>
    \repeat unfold 3 {
      R2
      f4-- r
    }
    c2\p--~
    2\<
    2--~
    2

    \mark #28
    c8\f-. r es4\mp--
    \startMeasureCount
    \after 2*3 \dim
    \repeat percent 7 { r4 es-- } <>\! \stopMeasureCount
    R2*8

    \mark #29
    <>\ppp
    \startMeasureCount
    e!2~ \repeat unfold 6 { e~ }
    2 \stopMeasureCount
    R2*11
    <<
      \new CueVoice {
        \oneVoice
        \quoteDuring "cuesA" s2*3
      }
      \context Voice = "pIIvc" {
        \voiceTwo
        R2*3
      }
    >> \oneVoice
    \tuplet 3/2 4 {
      c8\pp-. e-. c-. e\<-. g-. c-.
      g-. e-. g-. c-.  g-. e'-.
    }

    \mark #30
    c8\ff-. r c-- r
    r4 c8-- r
    \tuplet 3/2 4 { g8-. c-. d-. g,-. c-. d-. }
    e4-- c8-. r
    c-. r c-- r
    r4 c8-- r
    \tuplet 3/2 4 {
      g8-. c-. d-. h-. c-. d-.
      c-. e,-. g-. c-. e-. d-.
    }
    c-. r r4
    R2*7

    \mark #31
    <<
      \new CueVoice {
        \oneVoice
        \quoteDuring "cuesA" s2*2
      }
      \context Voice = "pIIvc" {
        \voiceTwo
        R2*2
      }
    >> \oneVoice
    g8\p\<-. g-. g-. g-.
    e\> e e e
    d\!-. r r4
    d2:8
    f:8
    e8 r r4
    b'8._\markup {\dynamic fff \italic cassant}-. 16-. 8-. 8-.
    8-. 8-. 4--
    \tuplet 3/2 4 { ges8( a b) b( a ges) }
    a4-.-- b-.--
    c8.-. 16-. 8-. 8-.
    8-. 8-. 4--
    \tuplet 3/2 4 { f,8( ges as) as( ges f) }
    es-- r des'\sff-. r

    \mark #32
    R2*11

    \mark #33
    R2*6
    <<
      \new CueVoice {
        \oneVoice
        \quoteDuring "cuesA" s2*4
      }
      \context Voice = "pIIvc" {
        \voiceTwo
        R2*4
      }
    >> \oneVoice
    b8.\fff-. 16-. 8-. 8-.
    8-. 8-. 4--
    \tuplet 3/2 4 { ges8( a? b) b( a ges) }
    a-- r c8-. 16-. 16-.
    8-. 8-. 4--
    \tuplet 3/2 4 { f,8( ges as) as( ges f) }
    es-- r d'\sff-. r

    \mark #34
    R2*20

    \after 2*2 \mark #35
    <<
      \new CueVoice {
        \oneVoice
        \quoteDuring "cuesA" s2*4
      }
      \context Voice = "pIIvc" {
        \voiceTwo
        R2*4
      }
    >> \oneVoice
    g,8-. as-. h-. as-.
    h-. as-. g-. as-.
    h-. c-. h-. as-.
    h4-.-- g8-.-> r
    R2*7
    <<
      \new CueVoice {
        \oneVoice
        \quoteDuring "cuesA" s2*2
      }
      \context Voice = "pIIvc" {
        \voiceTwo
        R2*2
      }
    >> \oneVoice
    r4 r8. d32\ff-. 32-.
    \tuplet 3/2 4 {
      8-. g-. d-. h-. d-. g-.
      d-. h-. d-. g-. d-. g-.
      d-. h-. d-. g-. h-. d-.
    }

    \mark #36
    \grace s8 c2--~
    2
    2--~
    2
    a--~
    2
    a--~
    2
    b\>~
    2~
    2~
    2~
    4..\mp( a16
    as4--\<) c,--
    4-- 4--
    4-- 4--
    2\ff--~
    2~
    2~
    2

    \mark #37
    c8\sff-. r r4
    es8\sff-. r r4
    \repeat unfold 3 { R2 es8\sff-. r r4 }
    R2*8
    \startMeasureCount
    g2\f~
    2~
    2~
    2\<~
    2~
    2 \stopMeasureCount
    R2*2\!

    \mark #38
    \startMeasureCount
    c,2\fff~
    2~
    2~
    2~
    2~
    2 \stopMeasureCount
    \startMeasureCount
    c2~
    2~
    2~
    2~
    2~
    2 \stopMeasureCount
    R2*3

    \mark #39
    R2*4
    es'8.\ff-. 16-. 8-. 8-.
    8-. 8-. 4--
    \tuplet 3/2 4 { as,8( b ces) ces( b as) }
    b4-.-- d8-.-- r
    g8.-. 16-.8-. 8-.
    es-. r \tuplet 3/2 { as,( b ces) }
    \tuplet 3/2 { ces( b as) } ces-. r
    c! r d8\fff-. 16-. 16-.
    8-. 8-. 4--
    \tuplet 3/2 4 { d8( es f) f( es d) }
    R2\fermata_\markup {\italic "long"}

    \tempo "Allègrement" \section \time 2/2
    c,4\pp-. r c-. r
    c-. r c-. r
    c-. r c-. r
    c-. r c-. r
    c-. r b-. r
    c-. r c-. r
    e-. r e-. r
    e2-> g4-. r
    g-. r g-. r
    g-. r as-._\markup{\italic "augmentez"} r
    g-. r g-. r
    c,-. r g'-. r
    g-. r g-. r
    as-. r g-. r
    g-. g-. e2->

    \mark #40
    e4\mf-. r e-. r
    e-. r e-. r
    e-. r e-. f
    g-. b,-. c2-\tweak to-barline ##f \>->~

    \section \time 2/4 \tempo "Très vif"
    c2\p~
    2_\markup{\italic "augmentez et pressez"}~
    2~
    2
    c2--~
    2~
    2\<~
    2

    \mark #41
    <>\ff-\tweak outside-staff-priority #0 _\markup{\halign #-0.5 "......"}
    \repeat percent 4 { \tuplet 6/4 4 { c2.:8 } }
    c2--~
    2~
    2~
    2 \breathe
    c--~
    2~
    2~
    2 \breathe
    c'2\fff--\fermata_\markup{\halign #0 \italic "très long"}
    \fine
  }
}