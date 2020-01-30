\ File: ass01-1a.lp
\
\ Assignment 1
\ Problem 1
\ Part A
\
\ Authors: Dana Cyr
\          Jake Raynor
\          Adam Bowker
\          Brayden Golas
\
\
\ Decision variables:
\   oil   : # barrels of oil purchased
\   h_sold: # barrels of heating oil sold
\   h_proc: # barrels of heating oil processed
\   a_sold: # barrels of aviation oil sold
\   a_proc: # barrels of aviation oil processed


Maximize
  40 h_sold + 90 h_proc + 60 a_sold + 130 a_proc - 40 oil
Subject To
  oil <= 20000
  - a_sold - a_proc + 0.5 oil = 0
  - h_sold - h_proc + 0.5 oil = 0
  0.001 a_proc + 0.00075 h_proc <= 8
End