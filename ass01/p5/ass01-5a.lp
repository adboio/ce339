\ File: ass01-5a.lp
\
\ Assignment 1
\ Problem 5
\ Part A
\
\ Authors: Dana Cyr
\          Jake Raynor
\          Adam Bowker
\
\
\ Decision variables:
\   t1: number of type 1 trucks produced
\   t2: number of type 2 trucks produced

Maximize
  300 t1 + 500 t2
Subject To
  700 t1 + 800 t2 <= 560000
  1200 t1 + 1500 t2 <= 1800000
Bounds
  t1 >= 0
  t2 >= 0
End