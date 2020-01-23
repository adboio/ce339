# CE 339 - Spring 2020

## Assignment 1
### 🔥 Problem 1
#### 👉 Part A
Files: `ass01-1a.lp`, `ass01-1a.log`

Conclusion: Solution is consistent with Revelle

#### 👉 Part B
Files: `ass01-1b.lp`, `ass01-1b.log`

The results, using a hardness of 1200, were:
```
  VARIABLE        VALUE
         x               25
         y          54.6875
         z          70.3125
```
resulting in a total cost of:
`25*500 + 54.7*1000 + 70.3*2000` = **$207,800**


...and with a hardness of 1000:
```
  VARIABLE        VALUE
         x               25
         y          35.9375
         z          89.0625
``` 
resulting in a total cost of:
`25*500 + 35.9*1000 + 89.1*20001` = **$226,600** *(a 9% increase)*

#### 👉 Part C
#### 👉 Part D

### 🔥 Problem 2
#### 👉 Part A
Files: `ass01-2a.lp`, `ass01-2a.log`

Data:
| Variable       | Value |
| -------------- | ----- |
| c<sub>11</sub> | 100   |
| c<sub>12</sub> | 120   |
| c<sub>13</sub> | 140   |
| c<sub>21</sub> | 120   |
| c<sub>22</sub> | 100   |
| c<sub>23</sub> | 120   |
| a<sub>1</sub>  | 400   |
| a<sub>2</sub>  | 300   |
| b<sub>1</sub>  | 250   |
| b<sub>2</sub>  | 100   |
| b<sub>3</sub>  | 350   |


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

#### 👉 Part B

### 🔥 Problem 3
