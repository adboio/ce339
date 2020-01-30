\ File: ass02-p6.lp
\
\ Assignment 2
\ Problem 6
\
\ Authors: Dana Cyr
\          Jake Raynor
\          Adam Bowker
\          Brayden Golas
\
\
\ Decision variables:
\ pijk: # of product i produced in month j on machine k

Maximize
  55 p111 + 55 p112 + 12 p121 + 12 p122 + 65 p211 + 65 p212 + 35 p221 + 35 p222
Subject To
  p111 >= 0
  p112 >= 0
  p121 >= 0
  p122 >= 0
  p211 >= 0
  p212 >= 0
  p221 >= 0
  p222 >= 0
  p111 + p112 <= 100
  p121 + p122 <= 190
  p211 + p212 <= 140
  p221 + p222 <= 130
  4 p111 + 7 p211 <= 500
  4 p121 + 7 p221 <= 500
  3 p112 + 4 p212 <= 500
  3 p122 + 4 p222 <= 500
Integer
  p111
  p112
  p121
  p122
  p211
  p212
  p221
  p222
End