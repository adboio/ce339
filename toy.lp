\ File: toy.lp
\ Author: Fweekman O'Hearn
\
\ This LP model solves most of the problems known to man.
\
\ Decision variables:
\   x: amount of eggs (in acre-feet-per-day)
\   y: amount of ham (in miles traveled)

Maximize
  2 x + 3 y
 Subject To
  4 x + 3 y <= 10     \ shear force limit
  3 x + 5 y <= 12     \ braking distance
 End

