\ File: ass01-2a.lp
\
\ Assignment 1
\ Problem 2
\ Part A
\
\ Authors: Dana Cyr
\          Jake Raynor
\          Adam Bowker
\
\
\ Decision variables:
\   xij: amounts to be transported from a particular
\        cut area to a specific fill area, with ij
\        indicating the amount transported from
\        cut area i to fill area j
\

Minimize
  100 x11 + 120 x12 + 140 x13 + 120 x21 + 100 x22 + 120 x23
 Subject To
  x11 + x12 + x13 <= 400
  x21 + x22 + x23 <= 300
  x11 + x21 >= 250
  x12 + x22 >= 100
  x13 + x23 >= 350
  x11 >= 0
  x12 >= 0
  x13 >= 0
  x21 >= 0
  x22 >= 0
  x23 >= 0
 End