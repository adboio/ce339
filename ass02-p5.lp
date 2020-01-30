\ File: ass02-p5.lp
\
\ Assignment 2
\ Problem 5
\
\ Authors: Dana Cyr
\          Jake Raynor
\          Adam Bowker
\          Brayden Golas
\
\
\ Decision variables:
\   x1s : acres of tract 1 used for spruce
\   x1h : acres of tract 1 used for hunting
\   x1b : acres of tract 1 used for both spruce and hunting
\   x2s : acres of tract 2 used for spruce
\   x2c : acres of tract 2 used for camping
\   x2b : acres of tract 2 used for both spruce and camping


Maximize
  0.2 x1s + 0.4 x1h + 0.5 x1b + 0.06 x2s + 0.09 x2c + 1.1 x2b
Subject To
  x1s + x1h + x1b <= 300
  x2s + x2c + x2b <= 100
  300 x1s + 300 x1h + 400 x1b + 100 x2s + 3000 x2c + 1000 x2b <= 150000
  0.1 x1s + 0.2 x1h + 0.2 x1b + 0.05 x2s + 5 x2c + 1.01 x2b <= 200
End