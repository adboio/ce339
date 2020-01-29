# Assignment 1
## 🔥 Problem 1
### 👉 Part A
**Files:** `ass01-1a.lp`, `ass01-1a.log`

**Results:**
```
  VARIABLE        VALUE
         x               25
         y          54.6875
         z          70.3125
```

**Conclusion:** Solution is consistent with Revelle

### 👉 Part B
**Files:** `ass01-1b.lp`, `ass01-1b.log`

The results, using a **hardness of 1200**, were:
```
  VARIABLE        VALUE
         x               25
         y          54.6875
         z          70.3125
```
resulting in a total cost of:
`25*500 + 54.7*1000 + 70.3*2000` = **$207,800**


...and with a **hardness of 1000**:
```
  VARIABLE        VALUE
         x               25
         y          35.9375
         z          89.0625
``` 
resulting in a total cost of:
`25*500 + 35.9*1000 + 89.1*20001` = **$226,600** *(a 9% increase)*

### 👉 Part C
![problem 1 part c graph of cost vs. water](https://raw.githubusercontent.com/adboio/ce339/master/ass01/p1/p1c-graph.png)

### 👉 Part D
Given the data in the chart below:

![problem 1 part d table](https://raw.githubusercontent.com/adboio/ce339/master/ass01/p1/p1c-table.png)

The maximum amount of water supplied from the three sources is:

**x1:** 25 mgd

**x2:** 35.94 mgd

**x2:** 89.06 mgd

## 🔥 Problem 2
### 👉 Part A
**Files:** `ass01-2a.lp`, `ass01-2a.log`

**Results:**
The model, from Revelle, results in the following values for x<sub>ij</sub>:
```
  VARIABLE        VALUE
       x11              250
       x12              100
       x13               50
       x21                0
       x22                0
       x23              300
```

### 👉 Part B
The real world problem that problem 2 is based on obviously would have been much more difficult had certain things not been simplified, such as all of the numbers being discrete and within a workable range, the small and finite range of areas being cut and filled, that all of the area being cut and filled will be the same- assuming a uniform base foundation being cut and added to-, and assuming it will all go smoothly and there will be no mistakes in the measurements taken. There are definitely more, there are always more variables that could be taken into account, but because of these simplifications and more it was a lot easier to break down the variables and linearly model this system. To consider every single outside force that could affect this experiment would not only add more dependent and independent variables, but it would overall complicate the model and possibly make it nonlinear. Any mistakes made, or base not being what was anticipated, will completely alter any assumed equations or variables and would be near impossible to graph perfectly.

## 🔥 Problem 3
### 👉 Part A
Checking calculations used to formulate **(3/4) x_1 + (1/4) x_2 ≥ 9000 and (1/4) x_1 + (3/4) x_2 ≥ 13000**.

**City 1:**

0.0075(12000 - x_1 ) + 0.0025(20000-x_2 ) ≤ 50

90-0.0075x_1+50-0.0025x_2≤50

0.0075x_1+0.0025x_2≥90

(3/4) x_1+(1/4) x_2≥9000

**Result:** Calculation here matches the model in the book.

**City 2:**

0.0025(12000-x_1 )+0.0075(20000-x_2 )≤50

30-0.0025x_1+150-0.0075x_2≤50

0.0025x_1+0.0075x_2≥130

(1/4) x_1+(3/4) x_2≥13000

**Result:** Calculation here matches the model in the book.

### 👉 Part B
**Files:** `ass01-3b.lp`, `ass01-3b.log`

**Results:**
```
  VARIABLE        VALUE
        x1             7000
        x2            15000
```

**Comment on the solution:** The solution reached using Gurobi determined X1 to be 7000 and X2 to be 15,000. This means that there would need to be a reduction of 7000 kg/month at plant 1 and a reduction of 15000 kg/month at plant 2, resulting in a yearly cost of $22,000,000 per year. This is a high cost, but that makes sense considering the massive amount of pollution that needs to be filtered from the smoke to reach the 50g per unit area mark desired in the problem.

## 🔥 Problem 4
**Files:** `ass01-4.lp`, `ass01-4.log`

**Results:**
```
  VARIABLE        VALUE
       p11                0
       p12                0
       p13                0
       p21              125
       p22               80
       p23                0
       o11              100
       o12                0
       o13              269
       o21                0
       o22                0
       o23                0
      sc11                0
      sc12                0
      sc13                0
      sc21                0
      sc22              340
      sc23                0
      sb11                0
      sb12                0
      sb13              331
      sb21               77
      sb22                0
      sb23                0
      sc33                0
```

## 🔥 Problem 5
### 👉 Part A
**Files:** `ass01-5a.lp`, `ass01-5a.log`

**Results:**
In order to maximize Trucko's profit, we should advise they produce **_700_ Type 2 trucks** and **_0_ Type 1 trucks**.
This will result in a profit of **$350,000.00**.
```
  VARIABLE        VALUE
        t1                0
        t2              700
```

### 👉 Part B
🚨 TODO 🚨
- Solve part A graphically