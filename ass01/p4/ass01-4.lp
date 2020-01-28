\ File: ass01-4.lp
\
\ Assignment 1
\ Problem 4
\
\ Authors: Dana Cyr
\          Jake Raynor
\          Adam Bowker
\
\
\ Decision variables:
\   p_ij: Pleasant (i: transfer station, j: landfill)
\   o_ij: Odorsburg (i: transfer station, j: landfill)
\   sc_ij: Scentington (i: transfer station, j: landfill)
\   sb_ij: Smellberry (i: transfer station, j: landfill)
\


Minimize
  124 p11 + 162 p12 + 118 p13 + 146 p21 + 126 p22 + 154 p23 + 118 o11 + 156 o12 + 112 o13 + 167 o21 + 147 o22 + 175 o23 + 153 sc11 + 191 sc12 + 147 sc13 + 181 sc21 + 161 sc22 + 189 sc23 + 104 sb11 + 142 sb12 + 98 sb13 + 132 sb21 + 112 sb22 + 140 sb23
Subject To
  p11 + p12 + p13 + p21 + p22 + p23 >= 205
  o11 + o12 + o13 + o21 + o22 + o23 >= 369
  sc11 + sc12 + sc13 + sc21 + sc22 + sc23 >= 340
  sb11 + sb12 + sb13 + sb21 + sb22 + sb23 >= 408
  p11 + p12 + p13 + o11 + o12 + o13 + sc11 + sc12 + sc13 + sb11 + sb12 + sb13 <= 700
  p21 + p22 + p23 + o21 + o22 + o23 + sc21 + sc22 + sc23 + sb21 + sb22 + sb23 <= 700
  p11 + p21 + o11 + o21 + sc11 + sc21 + sb11 + sb21 <= 500
  p12 + p22 + o12 + o22 + sc12 + sc22 + sb12 + sb22 <= 420
  p13 + p23 + o13 + o23 + sc13 + sc33 + sb13 + sb23 <= 600
End