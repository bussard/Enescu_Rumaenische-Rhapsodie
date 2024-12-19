\version "2.24.3"
\language "deutsch"

cuevc = \relative {
  \transposition c''
  \time 4/4
  \key a \major
  \compressEmptyMeasures
  \partial 8 r8
  R1*16
  % Nr. 2 Très vite
  <>^"Fl."
  d''8\f( fis) 8-. 8-. \acciaccatura gis fis-- e-- e4--
  R1*15
  \time 6/8
  R2.*17
  \time 2/4

  % Nr. 6 Mème temps
  <>^"Vln."
  a,4\p(~ 16. gis32-.) a16.-. ais32-.
  h4(~ 16. cis32-.) d16.-. e32-.
  R2*6

  % Plus vite
  <>^"Vln"
  a,8 r e'16.\pp-.( a32-.) gis16.-. a32-.
  h16.-- a32-. cis8-- e,16.-.( a32-.) gis16.-. a32-.
  h16.--_> gis32-. a8-- e16.-.( a32-.) gis16.-. a32-.
  R2*5

  % Posément
  \time 6/8
  R2.*24

  % Nr. 10 Mème temps
  <>^"Vln."
  \time 2/4
  a,4\p(~ 16. gis32-.) a16.-.( ais32-.)
  h4(~ 16. cis32-.) d16.-.( e32-.)
  cis8.--( h16--) \tuplet 3/2 { d16( cis) h-- } a8--
  R2*6

  % Nr. 11 Posément
  \time 6/8
  eis8(_\markup{\dynamic f \tiny \italic "lourd"} fis8) 8-- 4-- 8--
  \grace {h16( cis} h8--) ais-- h-- \acciaccatura his8 cis4.
  R2.*11

  % Nr. 12
  <>^\markup{\tiny \italic "lourd"}\ff
  fisis,,8( gis8) 8-- 4-- 8--
  \grace { cis16( dis } cis8--) his-- cis-- \acciaccatura cisis8 dis4.
  eis8(\( fis) fis--\) \acciaccatura gis8 fis--\dim e-- dis--
  dis16( gis) gis4(~ 4.\<~
  32\! fis16.) 32( e16.) 32\>( dis16.) 4.\p~
  dis!4 r8_\markup{\dynamic "mf" \italic "augmentes"} eis''8(\( fis) fis--\)
  \acciaccatura gis8 fis-- e!-- dis-- dis16( gis) gis4
  \acciaccatura a8 gis2.\trill
  2.\trill
  R2.

  % Nr. 13 Plus vite
  \time 2/4
  R2*15

  % Nr. 14 encore plus vite
  R2*19

  % Nr. 15
  R2*12

  % Nr. 16
  <>^"Clar."\mf
  cis,8-. e-. h8.\trill-> a16-.
  cis8-. a-. e-. a-.
  <>^"Fl."\p
  cis,8-. e-. h8.\trill-> a16-.
  cis8-. a-. e-. a-.
  R2*16

  % Nr. 17
  R2*12

  % Nr. 18
  <>^"Fl."
  cis'16( d e fis g! fis g fis
  \repeat tremolo 4 { g!16 fis }
  g! fis g fis g fis e d
  cis8) r r4

  R2*11

  <>^"Picc."(
  \ottava #1
  \repeat tremolo 4 { g'!16 f }
  s2*3
  g!16 f g f g f g gis)
  \ottava #0

  % Nr. 19 Très vif
  R2*16

  % Nr. 20
  R2*16

  % Nr. 21
  R2*8
  <>^"Vln."
  \relative {
    cis''4-- \tuplet 3/2 { e8( d) cis-- }
    \tuplet 3/2 { cis( h) a-- } e'4--
    cis-- \tuplet 3/2 { e8( d) cis-- }
    \tuplet 3/2 { cis( h) a-- } a'4--
    cis,-- \tuplet 3/2 { e8( d) cis-- }
    \tuplet 3/2 { cis( h) a-- }
    r4
  }

  % Nr. 22
  R2*12
  <>^"Vln."
  \relative {
    dis''8-. e-. fis\trill^- e-.
    d!-. cis-. his-. cis-.
    dis-. e-. fis\trill^-_> e-.
    d! cis-. his-. cis-.
  }

  % Nr. 23
  R2*24

  % Nr. 24
  R2*16

  % Nr. 25
  R2*16

  % Nr. 26
  R2*16

  % Nr. 27
  R2*12

  % Nr. 28
  R2*16

  % Nr. 29
  R2*19
  <>^"Vln."
  \relative {
     dis'''4:32 d:32
     cis:32 c:32
     h:32 b:32
     a2:32
     a8 r r4
  }

  % Nr. 30
  R2*16

  % Nr. 31
  <>^"Fl."
  \relative {
     <fis'' h>8.\mp-- 16-. 8-- 8--
     4.-- <fis fis'>8-.
  }
  R2*14

  % Nr. 32
  R2*11

  % Nr. 33
  R2*6
  <>^"Vln."
  \relative {
     r8 des'_\markup {\dynamic fff \italic "marqué"} es f
     ges8. f16 as8 f
     ges es f des
     c!8. <c' c'>16-. 8-. 8-.
  }
  R2*7

  % Nr. 34
  R2*20
  <>^"Fl./Cl."
  \relative {
     r4 gis''8\ff-. a-.
     h-. a-. h-. a-.

     % Nr. 35
     h-. c-. d-. c-.
     h-. a-. gis-. a-.
  }
  R2*11
  <>^"Fl./Cl."
  \relative {

     e'''4-.-- d8-. c-.
     h-. a-. g-. f-.
  }



} \addQuote "cues" \transpose c' a \cuevc

% \score { \cuevc }
