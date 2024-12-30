\version "2.24.3"
\language "deutsch"

combI = \relative {
  \transposition c'
   \time 4/4
   \key c \major
  \tempo "Modéré"
  \compressEmptyMeasures
  \override MultiMeasureRest.expand-limit = #4

  % ========== Trumpet I ===========
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
    \context Voice = "tI" {
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
    \context Voice = "tI" {
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
    \context Voice = "tI" {
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
    \context Voice = "tI" {
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
    \context Voice = "tI" {
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
    \context Voice = "tI" {
      \voiceOne
      R2.*5
      \voiceTwo
      R2.*4
    }
  >> \oneVoice

  % ====== Piston I =====
  <>^"Pist."
  \transpose c' a \relative c' {
    \afterGrace fis2.\p\<( {g16 gis}

    \mark #13 \section \time 2/4 \tempo "Plus vite"

    a8-.\f) r d-._\markup {\dynamic p \italic "sub."} r
    b-. r a-. r
    f'4( e
    c) cis8\pp-. r
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
        \quoteDuring "cuesA" s2*4
      }
      \context Voice = "tI" {
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
      \context Voice = "tI" {
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
      \context Voice = "tI" {
        \voiceTwo
        \repeat percent 4 R2 R2_\markup {\italic "précipitez" }
      }
    >> \oneVoice \ottava #0

    \mark #19 \section \tempo "Très vif"
    \grace s8 e8-.\fff-. r e-- r
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
    \tuplet 3/2 4 { \repeat unfold 2 { d-. e-. f-. }}
    g4-- e8-. r
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

    \mark #21
    R2*8
    <<
      \new CueVoice {
        \oneVoice
        \quoteDuring "cuesA" { s2*5 s4 }
      }
      \context Voice = "tI" {
        \voiceTwo
        R2*5
        r4
      }
    >> \oneVoice d8\sff-.-\tweak self-alignment-X #0 ^"Pist." r

    \mark #22
    R2*12
    <<
      \new CueVoice {
        \oneVoice
        \quoteDuring "cuesA" s2*4
      }
      \context Voice = "tI" {
        \voiceTwo
        R2*4
      }
    >> \oneVoice

    \mark #23
    \grace s8 <>\ff^"Pist."
    \repeat unfold 4 {
      c2--~
      2
    }
    \repeat unfold 2 {
      a2--~
      2
    }
    \after 4\>
    a2--~
    2~
    2~
    2
  }

  % ====== Trumpet I =============
  <>^"Trp."
  \relative c'' {
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
     c,4\mp-- r
     R2
     c4-- r
     dis'8\mf-. e-. h-. c-.
     dis-. e-. fis-. g-.
     dis-. e-. h-. c-.
     dis-. e-. fis-. g-.
    R2*4
  }

  % ===== Piston I ===========
  \transpose c' a' \relative c' {
    <>^"Pist."
    g2\p\<~
    2~
    2~
    2

    \mark #25
    \startMeasureCount
    g2\!_\markup {\dynamic pp \italic "sub."}~
    2~
    2~
    2~
    2~
    2 \stopMeasureCount
    R2*2
  }

  % ====== Trumpet I
  \relative c' {
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
     c8\f-. r
       % ======== Piston I ===============
       <>^"Pist."
       e,4\mp--
     r e--
     r e--
     r e--
     % ========= Trumpet I =============
     <>^"Trp."
     dis'8_\markup {\italic diminuez}-. e-. h-. c-.
     dis-. e-. fis-. g-.
     dis-. e-. h-. c-.
     dis\>-. e-. fis-. g-.
     R2*8\!

     \mark #29
     % ======= Piston I ===========
     <>^"Pist."
     g,2\ppp~
     2~
     2~
     2
     % ====== Trumpet I ==========
     <>^"Trp."
     cis2\ppp~
     2~
     2~
     2

  }

  % ===== Piston I ===========
  \transpose c' a' \relative c' {

    R2*11

%##########################################################################
\pageBreak
%##########################################################################

    <<
      \new CueVoice {
        \oneVoice
        \quoteDuring "cuesA" s2*3
      }
      \context Voice = "tI" {
        \voiceTwo
        R2*3
      }
    >> \oneVoice
    \tuplet 3/2 4 {
      c8\pp-. g-. e-. g\<-. c-. e-.
      c-. g-. e-. c-.  g'-. c-.
    }

    \mark #30
    e8\ff-. r e-- r
    r4 e8-- r
    \tuplet 3/2 4 { d8-. e-. f-. d-. e-. f-. }
    g4-- e8-. r
    e-. r e-- r
    r4 e8-- r
    \tuplet 3/2 4 {
      d8-. e-. f-. d-. e-. f-.
      e-. g,-. c-. e-. g-. f-.
    }
    f-. r r4
    R2*7

    \mark #31
    <<
      \new CueVoice {
        \oneVoice
        \quoteDuring "cuesA" s2*2
      }
      \context Voice = "tI" {
        \voiceTwo
        R2*2
      }
    >> \oneVoice
    g,8\p\<-. g-. g-. g-.
    c\> c g g
    f\!-. r r4
    f2:8
    g:8
    g8 r r4
    b8._\markup {\dynamic fff \italic cassant}-. 16-. 8-. 8-.
    8-. 8-. 4--
    \tuplet 3/2 4 { ges8( a b) b( a ges) }
    a4-.-- b-.--
    c8.-. 16-. 8-. 8-.
    8-. 8-. 4--
    \tuplet 3/2 4 { f,8( ges as) as( ges f) }
    es-- r f'\sff-. r

    \mark #32
    R2*8
  }

  % =========== Trompete I =========
  <<
    \new CueVoice {
     \oneVoice
     \quoteDuring "cues" { s2*2 s4. }
    }
    \context Voice = "tI" {
     \voiceTwo
     R2*2
     r4 r8
    }
  >> \oneVoice
  \relative c'' {
     <>^"Trp."
     des8^^_\markup {\dynamic ff \italic bouchée }

     \mark #33
     eses^^ f^^ ges^^ r
     R2*8
     c,8.\fff-+ 16-+ 8-+ 8-+
     8-+ 8-+ 4-+
     R2*2
     d8.\fff-+ 16-+ 8-+ 8-+
     8-+ 8-+ 4-+

     % ===== Piston I =======
     <>^"Pist."
     \tuplet 3/2 4 { d,8( es f) f( es d) }
     c-- r dis'\sff-. r
  }
   <>^"Trp."
   \mark #34
    R2*3
    <<
      \new CueVoice {
       \oneVoice
       \quoteDuring "cues" { s2*3 }
      }
      \context Voice = "tI" {
       \voiceTwo
       R2*3
      }
    >> \oneVoice
    <>^"Trp."
    \relative {
       gis'8\ff_+ a_+ h_+ a_+
       h_+ a_+ h-+ c-+
       d-+ c-+ h_+ a_+
       h4-+ e8-+ r
       gis,_+ a_+ h-+ c16-+ c-+
       d8-+ c16-+ c-+ d8-+ c16-+ c-+
       d8-+ c-+ h_+ a_+
       h4-+ e-+
       d8-+ c-+ h_+ a_+
       g_+ fis_+ g4_+
       d8_+ e_+ fis_+ a_+
       g4_+ e'-+
       d8-+ c-+ h_+ a_+
       g_+ fis_+ g4_+
       d8_+ e_+ f!_+ d_+
       e4_+ 4_+

       \mark #35
       gis8_+ a_+ h-+ c-+
       d-+ c-+ d-+ c-+
       d-+ c-+ h_+ a_+
       gis_+ a_+ h4-+
       e8-+ r_\markup {\italic \column { "rouvrez vite"
                                         "les tromp." }}^"open" r4
     }

  % ===== Piston I ===========
  \transpose c' a' \relative c' {
        d4-.-- g8-.-> r
    R2*7
    <<
      \new CueVoice {
        \oneVoice
        \quoteDuring "cuesA" s2*2
      }
      \context Voice = "tI" {
        \voiceTwo
        R2*2
      }
    >> \oneVoice
    r4 r8. h,32\ff-. 32-.
    \tuplet 3/2 4 {
      8-. d-. h-. g-. h-. d-.
      h-. g-. h-. d-. h-. d-.
      h-. g-. h-. d-. g-. d-.
    }

    \mark #36
    \grace s8 f!2--~
    2
    2--~
    2
    c--~
    2
    c--~
    2
    d\>~
    2~
    2~
    2~
    2\mp
    c4--\< as--
    4-- 4--
    4-- 4--
    g2\ff--~
    2~
    2~
    2

    \mark #37
    \repeat unfold 2 { g8\sff-. r r4 }
    \repeat unfold 3 { R2 g8\sff-. r r4 }
    R2*8

%##########################################################################
\pageBreak
%##########################################################################


    \startMeasureCount
    c2\f~
    2~
    2~
    2\<~
    2~
    2 \stopMeasureCount
    R2*2\!

    \mark #38
    \startMeasureCount
    c2\fff~
    2~
    2~
    2~
    2~
    2 \stopMeasureCount
    \startMeasureCount
    c,2~
    2~
    2~
    2~
    2~
    2 \stopMeasureCount
    R2*3

    \mark #39
    R2*4
    as''8.\ff-. 16-. 8-. 8-.
    8-. 8-. 4--
    \tuplet 3/2 4 { ces,8( d es) es( d ces) }
    d4-.-- f8-.-- r
    e!8.-. 16-.8-. 8-.
    es-. r \tuplet 3/2 { ces( d es) }
    \tuplet 3/2 { es( d ces) } fes-. r
    f! r d8\fff-. 16-. 16-.
    8-. 8-. 4--
    \tuplet 3/2 4 { d8( es f) f( es d) }
    R2\fermata_\markup {\italic "long"}

    \tempo "Allègrement" \section \time 2/2
    e,4\pp-. r e-. r
    e-. r g-. r
    f-. r g-. r
    g-. r e-. r
    e-. r f-. r
    e-. r e-. r
    g-. r g-. r
    c2-> b4-. r
    b-. r b-. r
    b-. r b-._\markup{\italic "augmentez"} r
    b-. r b-. r
    g-. r b-. r
    b-. r b-. r
    b-. r b-. r
    b-. g-. g2->

    \mark #40
    g4\mf-. r g-. r
    g-. r g-. r
    g-. r g-. h!
    c-. f,-.

  }

  % ========= Trumpet I ==============
  <>^"Trp."
  \relative c' {
     e2-\tweak to-barline ##f \>->~
     \section \tempo "Très vif" \time 2/4
     2\p)~
     2_\markup {\italic "augmentez et pressez"}~
     2~
     2
     cis'--~
     2~
     2\<~
     2

     \mark #41
     <>\ff^\markup {\halign #-0.5 "......"}
     \repeat unfold 4 { \tuplet 6/4 { cis2.:8 } }
     e2--~
     2~
     2~
     2
     a--~
     2~
     2~
     2 \breathe
     2--\fermata_\markup {\dynamic fff \italic long}
  }
  \fine



}