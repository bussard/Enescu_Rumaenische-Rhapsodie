\version "2.24.3"

trumpetII = \relative {
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
    \context Voice = "tpIIvc" {
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
    \context Voice = "tpIIvc" {
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
    \context Voice = "tpIIvc" {
      \voiceTwo
      R2*7
      r4 r8
    }
  >> \oneVoice
  <>^"Tromp."
  e'8\pp-.

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
    \context Voice = "tpIIvc" {
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
    \context Voice = "tpIIvc" {
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
      \voiceOne
      <>^"Trp. I" \afterGrace gis2.\p\<( {a16 ais}
      \mark #13 \section \time 2/4 \tempo "Plus vite"
      h8\f-.) r r4
    }
    \context Voice = "tpIIvc" {
      \voiceOne
      R2.*5
      \voiceTwo
      R2.*4
      R2.
      R2
    }
  >> \oneVoice
  r4 r8 a\p(
  fis4 a
  d--) fis,8\pp-. r
  fis-. r-. d-. r
  e-. r fis-. r
  R2*5
  <<
    \new CueVoice \relative {
      \oneVoice <>^"Trp. I"
      r4 e''8\ppp---. e---.
      e2:8
      e2:8->
      8 8
    }
    \context Voice = "tpIIvc" {
      \voiceTwo
      R2*3
      r4
    }
  >> \oneVoice r8 e8\ppp-.

  \mark #14
  a-. r r4
  R2*18

  \mark #15
  R2*12

  \mark #16
  <<
    \new CueVoice {
      \oneVoice
      \quoteDuring "cues" s2*2
    }
    \context Voice = "tpIIvc" {
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
    \context Voice = "tpIIvc" {
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
    \context Voice = "tpIIvc" {
      \voiceTwo
      \repeat percent 4 R2 R2_\markup {\italic "précipitez" }
    }
  >> \oneVoice
  \ottava #0

  \mark #19 \section \tempo "Très vif"
  <>^"Trp."
  \relative {
    <>\fff
    \repeat unfold 2 {
      \grace {s8} e''8-. r cis,-- r
      r4 cis8-- r
      r4 d8-- r
      r4 cis8-- r
      e'8-. r cis,-- r
      r4 cis8-- r
      r4 d8-- r
      cis4-- r
    }

    \mark #20
    \repeat unfold 2 {
      <<
        \new CueVoice {
          \voiceOne <>^"Trp. I"
          h'8.-- 16-. 8-- 8--
          4.-- r8
        }
        \context Voice = "tpIIvc" {
          \voiceTwo
          R2*2
        }
      >> \oneVoice
      R2*2
    }
    e8\ff-. r cis,-- r
    r4 cis8-- r
    R2
    r4 cis--
    e'8-. r cis,-- r
    r4 cis8-- r
    R2
    r4 cis--
   }

  \mark #21
  R2*10
  <<
    \new CueVoice {
      \oneVoice <>^"Vln."
      \quoteDuring "cues" { s2*3 s4 }
    }
    \context Voice = "tpIIvc" {
      \voiceTwo
      R2*3
      r4
    }
  >> \oneVoice <>^"Trp." d8\sff-. r

  \mark #22
  R2*14
  <<
    \new CueVoice {
      \oneVoice <>^"Vln."
      \quoteDuring "cues" { s2*2 }
    }
    \context Voice = "tpIIvc" {
      \voiceTwo
      R2*2
    }
  >> \oneVoice

  \mark #23
  <>^"Trp."
  \relative {
     \grace s8 cis''2\ff--~
     2
     \repeat unfold 3 {
       2--~
       2
     }
     \repeat unfold 2 {
       a--~
       2
     }
     \after 4 \>
     2--~
     2~
     2~
     2
     4\p--\< 4--
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
     a,,2\p\<~
     2~
     2~
     2

     \mark #25
     \startMeasureCount
     2\!_\markup {\dynamic pp \italic sub.}~
     2~
     2~
     2~
     2~
     2 \stopMeasureCount
     R2*2
     \startMeasureCount
     e'2\p~
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
     8\f-. r a,4\mp--
     r a--
     r a--
     r a8.-- r16
     h'8_\markup {\italic diminuez}-. c-. gis-. a-.
     h-. c-. dis-. e-.
     h-. c-. gis-. a-.
     h\>-. c-. dis-. e-.
     R2*8\!
  }

   \mark #29
   <<
     \new CueVoice {
       \oneVoice
       \quoteDuring "cues" s2*4
     }
     \context Voice = "tpIIvc" {
       \voiceTwo
       \tweak staff-position #-8 R2*4
     }
   >> \oneVoice
  \relative {
    <>^"Trp."
    a'2\ppp~
    2~
    2~
    2
    R2*14
    \tuplet 3/2 4 {
      cis,8\pp-. e-. a-. e-. cis\<-. a-.
      cis-. e-. a-. cis-. a-. cis-.
    }

    \mark #30
    e\ff-. r cis,-- r
    r4 cis8-- r
    r4 d8-- r
    r4 cis8-- r
    e'-. r cis,-- r
    r4 cis8-- r
    r4 d8-- r
    r4 cis8-- r
    R2*6
  }
  <<
    \new CueVoice {
     \oneVoice
     \quoteDuring "cues" s2*2
    }
    \context Voice = "tpIIvc" {
     \voiceTwo
     \tweak staff-position #-8 R2*2
    }
  >> \oneVoice

  \mark #31
  \relative {
    \repeat unfold 2 {
      <<
        \new CueVoice {
          \voiceOne <>^"Trp. I"\p
            h'8.-- 16-. 8-- 8--
            4.-- r8
        }
        \context Voice = "tpIIvc" {
          \voiceTwo
          R2*2
        }
      >> \oneVoice
      R2*2
    }
    <>_\markup {\dynamic fff \italic cassant }^"+Trp. I"
    c8.-. 16-. 8-. 8-.
    8-. 8-. 4--
    R2*2
    d8.-. 16-. 8-. 8-.
    8-. 8-. 4--
    <>_\markup { \halign #-1 "bouchez vite les tromp." }
    R2*2

    \mark #32
    R2*8
  }
  <<
    \new CueVoice {
     \oneVoice
     \quoteDuring "cues" { s2*2 s4. }

     \new CueVoice {
      \voiceOne <>^"Trp. I"
       des8^^
       eses^^ f^^ ges^^ r
     }
    }
    \context Voice = "tpIIvc" {
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
   R2*2

  \mark #34
  R2*3
  <<
    \new CueVoice {
     \oneVoice
     \quoteDuring "cues" { s2*3 }
    }
    \context Voice = "tpIIvc" {
     \voiceTwo
     R2*3
    }
  >> \oneVoice
  <>^"Trp."
  \relative {
     e'8\ff_+ f_+ gis_+ f_+
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
     R2*8
  }
  <<
    \new CueVoice {
     \oneVoice
     \quoteDuring "cues" { s2*2 }
    }
    \context Voice = "tpIIvc" {
     \voiceTwo
     R2*2
    }
  >> \oneVoice
  <>^"Trp."_"ouvertes"
  \relative {
     r8. e''32\ff-. 32-. \tuplet 3/2 { 8-. 8-. 8-. }
     <>^\markup {\halign #-0.5 ...... }
     \repeat unfold 3 { \tuplet 6/4 4 { 2.:8 } }

     \mark #36
     \grace s8 fis2--~
     2
     2--~
     2
     d,--~
     2
     2--~
     2
     \startMeasureCount
     2\>--~
     2~
     2~
     2~
     2\mp \stopMeasureCount
     a4\<-- a'4--
     4-- 4--
     4-- 4--
     2\ff--~
     2~
     2~
     2

     \mark #37
     a8\sff-. r r4
     a,8\sff-. r r4
     h'8\f-. c-. gis-. a-.
     h-. c-. dis-. e-.
     h16-. 16-. c8-. gis16-. 16-. a8-.
     h16-. 16-. c8-. dis16-. 16-. e8-.
     h-. c-. gis-. a-.
     h-. c-. dis-. e-.
     R2*8
     \startMeasureCount
     cis,2\f~
     2~
     2~
     2\<~
     2~
     2 \stopMeasureCount <>\!
     R2*2

     \mark #38
     \startMeasureCount
     a2\fff~
     2~
     2~
     2~
     2~
     2 \stopMeasureCount
     R2*9
  }

  \mark #39
  <<
    \new CueVoice {
     \oneVoice \clef bass
     \quoteDuring "cues" { s2*4 }
    }
    \context Voice = "tpIIvc" {
     \voiceTwo
     \tweak staff-position #-9 R2*4
    }
  >> \oneVoice
  <>^"Trp."
  \relative {
     \clef violin
     f'8.\ff-. 16-. 8-. 8-.
     8-. 8-. 4--
     f8-. r r4
     d-.-- g8-.-- r
     a8.-. 16-. 8-. 8-.
     as-. r f-. r
     r4 f8.-. 16-.
     8-. 8-. fis8-. 16-. 16-.
     8-. 8-. 4--
     d8-. d-. dis-. e-.
     R2\fermata_\markup{\italic "long"}
  }

  \section \time 2/2 \tempo "Allègrement"
  R1*11
  <<
    \new CueVoice {
     \oneVoice
     \quoteDuring "cues" { s1*4 }
    }
    \context Voice = "tpIIvc" {
     \voiceTwo
     R1*4
    }
  >> \oneVoice

  \mark #40
  <>^"Trp."
  \relative {
     r4 r a\mf-. r
     a'-. r cis,-. r
     a-. r a'-. f-.
     e-. b-. cis2\>\accent~
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