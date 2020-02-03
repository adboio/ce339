# CE 339 Assignment 2
## Dana Cyr, Jake Raynor, Adam Bowker, Brayden Golas
## 🔥 Problem 1

**Files:** `ass02-p1.lp`, `ass02-p1.log`

**Graphical Solution:**
![graphical representation of problem 1](https://raw.githubusercontent.com/adboio/ce339/master/ass02/p2/ass02-p1-graph.png)

**Results (Gurobi):**
```
  VARIABLE        VALUE
        x1                2
        x2                0
```


**Winston Case:**
```
2. "The LP has alternative or multiple optimal solutions: Two or more extreme points
are optimal, and the LP will have an infinite number of optimal solutions."
```


## 🔥 Problem 2

**Files:** `ass02-p2.lp`, `ass02-p2.log`

**Graphical Solution:**
![graphical representation of problem 2](https://raw.githubusercontent.com/adboio/ce339/master/ass02/p2/ass02-p2-graph.png)

**Results (Gurobi):**
```
Unbounded model
```

**Winston Case:** 
```
4. "The LP is unbounded: There are points in the feasible region with arbitrarily large
z-values (max problem) or arbitrarily small z-values (min problem)."
```


## 🔥 Problem 3
### 👉 Part A
**Files:** `ass02-p3a.lp`, `ass02-p3a.log`, `ass02-p3a.ilp`

**Graphical Representation:**
![graphical representation of problem 3a](https://raw.githubusercontent.com/adboio/ce339/master/ass02/p3/ass02-p3a-graph.png)

**Results:**
```
Winston Case 2: "The LP is infeasible: The feasible region contains no points."
```

### 👉 Part B
🚨 TODO 🚨
_Remove the constrant `x2 - x1 >= 3` and solve again._
_Determine two optimal solns for the new LP._


### 👉 Part C
🚨 TODO 🚨
_Find a way to formulate the new LP so that it produces the alternate optimal solution, i.e. the second one._

## 🔥 Problem 4
**Files:** `ass02-p4.lp`, `ass02-p4.log`

**Decision Variables:**
```
oil    : # barrels of oil purchased
h_sold : # barrels of heating oil sold
h_proc : # barrels of heating oil processed
a_sold : # barrels of aviation oil sold
a_proc : # barrels of aviation oil processed
```

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
**Files:** `ass02-p5.lp`, `ass02-p5.log`

**Decision Variables:**
```
x1s : acres of tract 1 used for spruce
x1h : acres of tract 1 used for hunting
x1b : acres of tract 1 used for both spruce and hunting
x2s : acres of tract 2 used for spruce
x2c : acres of tract 2 used for camping
x2b : acres of tract 2 used for both spruce and camping
```

**Results:**
```
  VARIABLE        VALUE
       x1s                0
       x1h              300
       x1b                0
       x2s                0
       x2c                0
       x2b               60
```

**Comments:** Our model suggests that in tract 1, all 300 acres should be used for designated for hunting use (`x1h = 300`). This results in a profit of $120,000. In tract 2, 60 acres should be designated for both spruce and camping (`x2b = 60`). This results in a profit of $66,000.

## 🔥 Problem 6
**Files:** `ass02-p6.lp`, `ass02-p6.log`

**Decision Variables:**
```
pijk : # of product i produced in month j on machine k
```

**Results:**
```
  VARIABLE        VALUE
      p111              100
      p112                0
      p121              116
      p122                0
      p211               14
      p212              125
      p221                5
      p222              125
```

**Comments:** This model suggests we should produce the following products:
```
Product    Month    Machine    Qty    Revenue
   1         1         1       100     $5300
   1         2         1       116     $1392
   2         1         1        14     $ 910
   2         1         2       125     $8125
   2         2         1         5     $ 160
   2         2         2       125     $4000
```
This production will result in a revenue of **$19,887**.