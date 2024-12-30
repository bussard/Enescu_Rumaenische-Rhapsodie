\version "2.24.3"
\language "deutsch"

combII = {
  \transposition c'

  % ========= Trumpet II ==============
  \relative c' {
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
      \context Voice = "tII" {
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
      \context Voice = "tII" {
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
      \context Voice = "tII" {
        \voiceTwo
        R2*7
        r4 r8
      }
    >> \oneVoice
    <>^"Tromp."
    e8\pp-.

    \mark #7 \section \time 6/8
    a-. r r r4 r8
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
      \context Voice = "tII" {
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
      \context Voice = "tII" {
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
      \context Voice = "tII" {
        \voiceOne
        R2.*5
        \voiceTwo
        R2.*4
      }
    >> \oneVoice
  }

  % ===== Piston II ===========
  <>^"Pist."
  \transpose c' a' \relative c {
    \afterGrace dis2.\p\<( { e8 }

    \mark #13 \section \time 2/4 \tempo "Plus vite"

    f8-.\f) r a-._\markup {\dynamic p \italic "sub."} r
    g-. r f-.
  }

  % ======= Trompete I ========
  \relative a' {
    <>^"Trp."
    a\p(
    d4 e
    fis--) e8\pp-. r
  }

  % =========== Piston II =======
  \transpose c' a' \relative c {
    <>^"Pist."
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
      \context Voice = "tII" {
        \voiceTwo
        \tweak staff-position #-8
        R2*4
      }
    >> \oneVoice
    R2*16

    \mark #17
    R2*12

%##########################################################################
\pageBreak
%##########################################################################
    \mark #18
    <<
      \new CueVoice {
        \oneVoice
        \quoteDuring "cuesA" s2*4
      }
      \context Voice = "tII" {
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
      \context Voice = "tII" {
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
      c-. e\>-. c-. g-. e-. c-. <>\!
    }
  }

  \mark #20
  <>^"Trp."
  % ======== Trumpet I ==================
  \relative h' {
    h8.-- 16-. 8-- 8--
    4.-- r8
    R2*2
    h8.-- 16-. 8-- 8--
    4.-- r8
  }

  <>^"Pist."
  % ========= Piston II ==============
  \transpose c' a' \relative c {
    f2:8_\markup{\halign #-.5 "...."}
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
      \context Voice = "tII" {
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
      \context Voice = "tII" {
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
  }

  <>^"Trp."
  % ========= Trumpet 2 ===========
  \relative a' {
    a4\p--\< 4--
    4-- 4--
    4-- 4--
    4-- 4--
    2\ff--~
    2~
    2~
    2

    \mark #24
    8\sff-. r r4
    a,4\mp-- r
    R2
    a4-- r
    h'8\mf-. c-. gis-. a-.
    h-. c-. dis-. e-.
    h-. c-. gis-. a-.
    h-. c-. dis-. e-.
    R2*4

  }

  <>^"Pist."
  % ========= Piston II ==============
  \transpose c' a' \relative c {
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
  }

  <>-\tweak outside-staff-priority #1000 ^"Trp."
  % ========= Trumpet 2 ===========
  \relative e' {
    \startMeasureCount
    e2\p~
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
    cis'2\ff--~
    2~
    2~
    2
    a4\mf\<-- 4--
    4-- 4--
    4-- 4--
    4-- 4--
    2\ff--~
    2~
    2~
    \after 4 \> 2

    \mark #27
    h8\f-. r r4
    h,\mp-- r
    R2
    h4-- r
    R2
    h4\> r
    R2
    h4-- r\!
    a'2\p\<--~
    2
    2--~
    2

    \mark #28
    8\f-. r
  }

  <>^"Pist."
  % ========= Piston II ==============
  \transpose c' a' \relative c {
    es4\mp--
    \repeat unfold 3 { r4 es-- } <>\!
  }

  <>^"Trp."
  % ========= Trumpet 2 ===========
  \relative h' {
    h8_\markup {\italic diminuez}-. c-. gis-. a-.
    h-. c-. dis-. e-.
    h-. c-. gis-. a-.
    h\>-. c-. dis-. e-.
    R2*8\!
  }

%##########################################################################
\pageBreak
%##########################################################################

  <>^"Pist."
  % ========= Piston II ==============
  \transpose c' a' \relative c {
    \mark #29
    <>\ppp
    e!2~
    2~
    2~
    2
  }

  <>^"Trp."
  % ========= Trumpet 2 ===========
  \relative a' {
    a2\ppp~
    2~
    2~
    2
    R2*11
    <<
      \new CueVoice {
        \oneVoice
        \quoteDuring "cues" s2*3
      }
      \context Voice = "tII" {
        \voiceTwo
        R2*3
      }
    >> \oneVoice

    % ========== Trumpet 1 ==========
    \tuplet 3/2 4 {
      e8\pp-. a-. cis-. a-. cis\<-. e-.
      cis-. a-. cis-. e-. cis-. e-.
    }
    a\ff-. r
  }

  <>^"Pist."
  % ========= Piston II ==============
  \transpose c' a' \relative c' {
    c-- r
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
    R2*5
  }


  % ========= Trumpet 1 ===========
  \relative h' {
    <<
      \new CueVoice {
        \oneVoice
        \quoteDuring "cues" s2*2
      }
      \context Voice = "tII" {
        \voiceTwo
        \tweak staff-position #-8 R2*2
      }
    >> \oneVoice

    \mark #31
    <>^"Trp."
    h8.-- 16-. 8-- 8--
    4.-- r8
    R2*2
    h8.-- 16-. 8-- 8--
  }

  <>^"Pist."
  % ========= Piston II ==============
  \transpose c' a' \relative c {
    d2:8
    f:8
    e8 r r4
  }

  <>^"Trp."
  % ========= Trumpet 1 ===========
  \relative c'' {
    <>_\markup {\dynamic fff \italic cassant }
    c8.-. 16-. 8-. 8-.
    8-. 8-. 4--
    R2*2
    d8.-. 16-. 8-. 8-.
    8-. 8-. 4--
  }

  <>^"Pist."
  % ========= Piston II ==============
  \transpose c' a' \relative c {
    \tuplet 3/2 4 { f8( ges as) as( ges f) }
    es-- r des'\sff-. r
  }

  \mark #32

  <>^"Trp."
  % ========= Trumpet 2 ===========
  \relative c' {
    R2*8
    <<
      \new CueVoice {
       \oneVoice
       \quoteDuring "cues" { s2*2 s4. }

       \new CueVoice {
        \voiceOne <>^"Trp. I"
         des'8^^
         eses^^ f^^ ges^^ r
       }
      }
      \context Voice = "tII" {
       \voiceTwo
       R2*3

       \mark #33
       r4_\markup {\italic bouchée }
       \oneVoice des,4\ff-.--_+
      }
    >> \oneVoice
    eses-.--_+ f-.--_+
    ges-.--_+ f-.--_+
    as2\accent_+~
    8 r ges4-.--_+
    r4 f\accent_+~
    4 r
    R2*2
     g8.\fff-+ 16-+ 8-+ 8-+
     8-+ 8-+ 4-+
     R2*2
     a8.\fff-+ 16-+ 8-+ 8-+
     8-+ 8-+ 4-+

  }

  <>^"Pist."
  % ========= Piston II ==============
  \transpose c' a' \relative c {
    \tuplet 3/2 4 { f8( ges as) as( ges f) }
    es-- r d'\sff-. r

    \mark #34
    R2*3
  }

  <>^"Trp."
  % ========= Trumpet 2 ===========
  \relative c' {
    <<
      \new CueVoice {
       \oneVoice
       \quoteDuring "cues" { s2*3 }
      }
      \context Voice = "tII" {
       \voiceTwo
       R2*3
      }
    >> \oneVoice
     e8\ff_+ f_+ gis_+ f_+
     gis_+ f_+ gis-+ a-+
     h-+ a-+ gis_+ fis_+
     gis4-+ 8-+ r
     e_+ f!_+ gis_+ a_+
     h_+ a_+ gis_+ a_+
     gis8_+ f_+ gis_+ a_+
     gis4_+ e'-+
     d8-+ c-+ h_+ a_+
     g_+ fis_+ g4_+
     d8_+ e_+ fis_+ a_+
     g4_+ d_+
     h'8_+ a_+ g_+ d_+
     h_+ d_+ h4_+
     a8_+ cis_+ d_+ a_+
     gis4_+ 4_+

     \mark #35
     e'8_+ f_+ gis_+ f_+
     \repeat unfold 2 { gis_+ f_+ e_+ f_+ }
     e_+ f_+ gis4_+
     e8_+ r_\markup {\italic \column { "rouvrez vite"
                                       "les tromp." }}^"open" r4

     % ========== Trumpet 1 ==========
     R2*8
    <<
      \new CueVoice {
       \oneVoice
       \quoteDuring "cues" { s2*2 }
      }
      \context Voice = "tII" {
       \voiceTwo
       R2*2
      }
    >> \oneVoice
     r8.^"Trp." e'32\ff-. 32-. \tuplet 3/2 { 8-. 8-. 8-. }
     <>^\markup {\halign #-0.5 ...... }
     \repeat unfold 3 { \tuplet 6/4 4 { 2.:8 } }

     \mark #36

  }

  <>^"Pist."
  % ========= Piston II ==============
  \transpose c' a' \relative c' {
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

%##########################################################################
\pageBreak
%##########################################################################

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
    g-. b,-.

  }

  <>^"Trp."
  % ========= Trumpet 2 ===========
  \relative c' {
        cis2-\tweak to-barline ##f \>\accent~
     \section \tempo "Très vif" \time 2/4
     2\p~
     2_\markup {\italic "augmentez et pressez"}~
     2~
     2
     a'--~
     2~
     2\<~
     2

     \mark #41
     <>\ff^\markup {\halign #-0.5 "......"}
     \repeat unfold 4 { \tuplet 6/4 { a2.:8 } }
     cis2--~
     2~
     2~
     2
     2--~
     2~
     2~
     2 \breathe
     e2--\fermata_\markup {\dynamic fff \italic long}
  }
  \fine

}