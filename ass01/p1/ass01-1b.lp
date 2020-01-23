\ File: ass01-1b.lp
\
\ Assignment 1
\ Problem 1
\ Part B
\
\ Authors: Dana Cyr
\          Jake Raynor
\          Adam Bowker
\
\
\ Decision variables:
\   x: millions of gallons per day to be
\      drawn from source 1
\   y: millions of gallons per day to be
\      drawn from source 2
\   z: millions of gallons per day to be
\      drawn from source 3

Minimize
  500 x + 1000 y + 2000 z
 Subject To
  x + y + z >= 150
  200 x + 2300 y + 700 z <= 150000 \ 1000*150
  x <= 25
  y <= 120
  z <= 100
  x >= 0
  y >= 0
  z >= 0
 End