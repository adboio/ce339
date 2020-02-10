# CE 339 Assignment 3
## Dana Cyr, Jake Raynor, Adam Bowker, Brayden Golas
## 🔥 Problem 1
_Solve problem 2 of section 4.4 in Winston:_

_For the Dorian problem (Example 2 in Chapter 3), show how the basic feasible solutions to the LP in standard form correspond to the extreme points of the feasible region._

## 🔥 Problem 2
_Solve problem 2 of section 4.5 in Winston and **confirm your solution with Gurobi**:_

_Use the simplex algorithm to solve the LP problem._

## 🔥 Problem 3
_Solve problem 5 in section 4.7 in Winston. Hint: solve the problem by hand using the Simplex algorithm and allow it to find the optimal solution(s)._

## 🔥 Problem 4
_Solve problem 5 of section 4.8 in Winston. Hint: solve the problem by hand using the Simplex algorithm and show it is unbounded._

## 🔥 Problem 5
_Consider the following Gurobi input file:_
```
Maximize
  3 x1 + 2 x2
Subject To
 1: -x1 + 2 x2 <= 20
 2: x1 + 2 x2 <= 40
 3: x1 - x2 <= 10
End
```

### 👉 Part A
_Solve the problem graphically._

### 👉 Part B
_Solve the problem using Gurobi and compare your results._

### 👉 Part C
_Calculate the slack in constraints 1, 2, and 3 by hand, and show that they agree with the results produced by Gurobi._

### 👉 Part D
_Define the term "dual price"._

### 👉 Part E
_Re-solve the problem graphically to determine the dual price for constraints 2 and 3 (you will need to produce 2 graphical solutions, one for each constraint)._

### 👉 Part F
_The allowable decrease for constraint 2 is 30. Use your graphical solution to explain why._

### 👉 Part G
_Why is the allowable increase for constraint 1 infinity?_

### 👉 Part H
_The allowable increase in the objective function coefficient of x2 is 4. Use your graphical solution to explain why._