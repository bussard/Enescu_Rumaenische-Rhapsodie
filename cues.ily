\version "2.24.3"

cuevc = \relative {
  \transposition a'
  r8
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
  4 r8_\markup{\dynamic "mf" \italic "augmentes"} eis''8(\( fis) fis--\)
  \acciaccatura gis8 fis-- e-- dis-- dis16( gis) gis4
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
  <>^"Cl."\mf
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
  \ottava #1
  cis'16( d e fis g! fis g fis
  \repeat tremolo 4 { g!16 fis }
  g! fis g fis g fis e d
  cis8) r r4
  \ottava #0
  R2*11

  <>^"Picc."(
  \ottava #1
  \repeat tremolo 4 { g'!16 f }
  s2*3
  g!16 f g f g f g gis)
  \ottava #0

  % Nr. 19 Très vif
} \addQuote "cues" \cuevc
