# Implicit Expansion Bug in MATLAB
This repository demonstrates a common yet easily overlooked error in MATLAB related to implicit expansion. The function `myFunction.m` attempts to handle both scalar and vector inputs, but it does so incorrectly. This results in an error if the input is a vector or matrix because of implicit expansion, which can cause unintended results and unexpected errors in MATLAB.

## The Bug
The `myFunction.m` file contains a function that should perform different calculations based on the input value.  However, the multiplication `input * 2` (and to a lesser degree the addition `input + 5`) operates on an element-by-element basis which causes errors when input is not a scalar.

## Solution
The `bugSolution.m` file demonstrates the correct way to handle vector/matrix inputs using element-wise operations explicitly, or by checking the input type and applying appropriate logic.

## How to reproduce the error
1. Save the code in `bug.m`
2. Run the following command in the MATLAB command window: `myFunction([11, 12])`

This will result in a size mismatch error. 