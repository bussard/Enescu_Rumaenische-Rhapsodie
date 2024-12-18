\version "2.24.3"
\language "deutsch"

\paper {
  paper-height = 353\mm
  paper-width = 250\mm
}

\header {
  title = "1. Ungarische Rhapsodie"
  subtitle = "in A-Dur"
  composer = "Georges Enescu"
  opus = "Op. 11"
  tagline = ##f
}

helper = \relative {
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
  h16.--_> gis32-. a8-- e,16.-.( a32-.) gis16.-. a32-.
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
  eis8\f(_\markup{\tiny \italic "lourd"} fis8 8-- 4-- 8--
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
  \acciaccatura a8 gis2\trill
  2\trill
  R2

  % Nr. 13 Plus vite
} \addQuote "q_helper" \helper


common = {
  \time 4/4
  \tempo "Modéré"
  \compressEmptyMeasures
  \override MultiMeasureRest.expand-limit = #5
  \partial 8
  r8
  R1*8 <>\fermata

  \mark #1
  R1*8 <>\fermata

  \mark #2
  \tempo "Très vite"
  \cueDuring "q_helper" UP s1
  R1*8

  \mark #3
  R1*7

  \section \tempo "Posément" \time 6/8
  R2.*2

  \mark #4
  R2.*8

  \mark #5
  R2.*7

  \mark #6 \section \time 2/4 \tempo "Mème temps" 4=4.
  \cueDuring "q_helper" UP s2*2
  R2*6
  \tempo "Plus vite"
  \cueDuring "q_helper" s2*3
  R2*5

  \mark #7 \section \time 6/8 \tempo "Posément"
  R2.*9

  \mark #8
  R2.*8

  \mark #9
  R2.*7

  \mark #10 \section \time 2/4 \tempo "Mème temps" 4=4.
  \cueDuring "q_helper" s2*3
  R2*6

  \mark #11 \section \time 6/8 \tempo "Posément"
  \cueDuring "q_helper" s2.*2
  R2.*11

  \mark #12
  \cueDuring "q_helper" s2.*9
}

pistonI = {
  \transposition a'
  \common

  \relative {
    \afterGrace fis'2.\p\<( {g16 gis}

    \mark #13 \section \time 2/4 \tempo "Plus vite"
    a8-.\f) r d-._\markup {\dynamic p \italic "sub."} r
    b-. r a-. r
  }
}

\score {
  \pistonI
}