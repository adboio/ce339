\ File: ass01-2a.lp
\
\ Assignment 1
\ Problem 3
\ Part B
\
\ Authors: Dana Cyr
\          Jake Raynor
\          Adam Bowker
\
\
\ Decision variables:
\   x1: kg/month reduction at plant 1
\   x2: kg/month reduction at plant 2
\

Minimize
  1000 x1 + 1000 x2
 Subject To
  0.75 x1 + 0.25 x2 >= 9000
  0.25 x1 + 0.75 x2 >= 13000
  x1 >= 0
  x2 >= 0
 End