# CE 339 Assignment 2
## Dana Cyr, Jake Raynor, Adam Bowker, Brayden Golas
## 🔥 Problem 1
_Winston 3.3 problem 2 (p. 68)_
_Use both Gurobi and graph_

## 🔥 Problem 2
_Winston 3.3 problem 3 (p. 68)_
_Use both Gurobi and graph_

## 🔥 Problem 3
### 👉 Part A
_Winston 3.3 problem 8 (p. 68)_
_Use both Gurobi and graph_

### 👉 Part B
_Remove the constrant `x2 - x1 >= 3` and solve again._
_Determine two optimal solns for the new LP._

### 👉 Part C
_Find a way to formulate the new LP so that it produces the alternate optimal solution, i.e. the second one._

## 🔥 Problem 4
**Files:** `ass02-p4.lp`, `ass02-p4.log`

**Results:**
```
  VARIABLE        VALUE
    h_sold            10000
    h_proc                0
    a_sold             2000
    a_proc             8000
       oil            20000
```

**Comments:** Our model suggests all 20,000 available barrels of oil should be purchased. From these, 10,000 barrels of heating oil and 10,000 barrels of aviation fuel are produced. All heating oil is sold (`h_sold = 10000`), generating $400,000 in revenue. 8,000 barrels of aviation fuel are processed (`a_proc = 8000`) then sold, resulting in $1.04MM in revenue. The remaining 2,000 barrels of aviation fuel are sold without processing (`a_sold = 2000`), generating $120,000 in revenue. Total costs for these barrels were $800,000, which results in a final profit of $760,000/day for Sunco.

## 🔥 Problem 5
_Solve Winston ch. 3 review problem #20 (p. 116)_
_Use Gurobi_

## 🔥 Problem 6
_Solve Winston ch. 3 review problem #22 (p. 116-117)_
_Use Gurobi_