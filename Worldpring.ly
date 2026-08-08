\version "2.22.0"

\header {
  title = "Earth Concerto for Global Orchestra"
  subtitle = "改编自维瓦尔第《春》第一乐章 · 欢快优美"
  composer = "世界乐师 & 维瓦尔第"
}

global = {
  \key g \major
  \time 4/4
}

% --- 第一小提琴（主旋律：完整的《春》主题）---
violin_one = \relative c'' {
  \global
  \tempo "Allegro (欢快的)" 4=120
  
  % 主题 A（春临大地）
  \mark \markup { \box "1. 春临大地" }
  g4.\mf( b8 d8 e16 d b8 g) r4 |
  b4.( d8 e16 d b8 g) b4~ |
  b8( d4 fis8 g4 d) |
  e4.( d8 b4 g) |
  
  g4.( b8 d8 e16 d b8 g) r4 |
  b4.( d8 e16 d b8 g) b4~ |
  b8( d4 fis8 g4 d) |
  e4.( d8 b4 g) |
  
  % 过渡段（溪水潺潺，优美流动）
  \mark \markup { \box "2. 溪水与微风" }
  d'4\p( c8 b a4 g) |
  fis4( e8 d g4 b) |
  d4( c8 b a4 g) |
  fis4( e8 d g2) |
  
  % 主题 B（鸟语花香，更加欢快）
  \mark \markup { \box "3. 鸟语花香" }
  g'4.\f( e8 d4 b) |
  g'4.( e8 d4 b) |
  a'4.( fis8 e4 c) |
  a'4.( fis8 e4 c) |
  b'4.\ff( g8 fis4 d) |
  c'4.( a8 g4 e) |
  d'2( b4 g) |
  e'2( d4 b) |
  
  % 辉煌的尾声（阳光普照）
  \mark \markup { \box "4. 阳光普照" }
  g'1~\mf | 
  g1~ |
  g2 r2 |
  \bar "|."
}

% --- 第二小提琴（副旋律与和声填充）---
violin_two = \relative c'' {
  \global
  % 前4小节做背景和声，增加厚度
  d4.\p( b8 g4) r | d'4.( b8 g4) r | d4.( b8 g4) r | d'4.( b8 g4) r |
  
  % 与主旋律呼应
  g4.( b8 d8 e16 d b8 g) r4 |
  b4.( d8 e16 d b8 g) b4~ |
  b8( d4 fis8 g4 d) |
  e4.( d8 b4 g) |
  
  d4\p( c8 b a4 g) |
  fis4( e8 d g4 b) |
  d4( c8 b a4 g) |
  fis4( e8 d g2) |
  
  % 对位旋律
  g4.\f( e8 d4 b) |
  g'4.( e8 d4 b) |
  a4.( fis8 e4 c) |
  a'4.( fis8 e4 c) |
  g'4.\ff( e8 d4 b) |
  fis'4.( d8 c4 a) |
  g2( e4 c) |
  d2( g,4 b) |
  
  g'1~\mf | g1~ | g2 r2 |
}

% --- 中提琴（分解和弦与节奏支撑）---
viola_section = \relative c' {
  \global
  \clef alto
  % 节奏型：模仿吉他式的分解和弦
  d2\p( b4 g) | d'2( b4 g) | d2( b4 g) | d'2( b4 g) |
  d2( b4 g) | d'2( b4 g) | d2( b4 g) | d'2( b4 g) |
  
  d2( c4 a) | d2( c4 a) | d2( c4 a) | d2( c4 a) |
  
  d2\f( b4 g) | d'2( b4 g) | e2( c4 a) | e'2( c4 a) |
  d2\ff( b4 g) | d'2( b4 g) | e2( c4 a) | e'2( c4 a) |
  d1~\mf | d1~ | d2 r2 |
}

% --- 大提琴/低音（稳固的低音线条）---
cello_bass = \relative c {
  \global
  \clef bass
  g2\p( d4 g,) | g'2( d4 g,) | g2( d4 g,) | g'2( d4 g,) |
  g2( d4 g,) | g'2( d4 g,) | g2( d4 g,) | g'2( d4 g,) |
  
  g2( a4 d,) | g2( a4 d,) | g2( a4 d,) | g2( a4 d,) |
  
  g2\f( d4 g,) | g'2( d4 g,) | a2( e4 a,) | a'2( e4 a,) |
  g2\ff( d4 g,) | g'2( d4 g,) | a2( e4 a,) | a'2( e4 a,) |
  g1~\mf | g1~ | g2 r2 |
}

% --- 总谱 ---
\score {
  <<
    \new Staff \with { instrumentName = "小提琴 I (春之旋律)" } { \violin_one }
    \new Staff \with { instrumentName = "小提琴 II (和声伴唱)" } { \violin_two }
    \new Staff \with { instrumentName = "中提琴 (节奏律动)" } { \viola_section }
    \new Staff \with { instrumentName = "大提琴 (低音基石)" } { \cello_bass }
  >>
  \layout { 
    indent = 2.5\cm
  }
  \midi { 
    \tempo 4=120
  }
}