# TLBOSearch
## Overview
Matlab compact implementation of the Teaching-Learning-Based Optimization algorithm proposed by Rao et al. (2012) in [1] and also explained in [2], in its version for unconstrained optimization problems.

Coded by N.C. Cruz, University of Almeria, Spain

## Contents
This repository contains the matlab script function called 'TLBOSearch.m' with the implementation of the working algorithm for unconstrained optimization problems and a sample objective function for simple testing in the matlab script function 'Sphere.m'. It is the same sample problem which is also solved in [2] as an example of application of the TLBO algorithm in an unconstrained optimization problem.

## Description of the module
The module 'TLBOSearch' requires as INPUT parameters: 
1. A handle/pointer to the objective function to be used ('readyCostFunction'). It is a matlab function handle.
2. The size of the population to deploy ('populationSize'). It is a plain number. 
3. The number of cycles to execute ('numGenerations'). It is a plain number.
4. A matrix with the bounds/limits of the search-space at every dimension ('bounds'). It is a Mx2 matrix where M is the number of optimization variables and at every row 'i' the lower bound is in the first column while the upper bound is in the second column in reference to the dimension 'i' of the search-space

The module 'TLBOSearch' returns as OUTPUT parameters:
1. The solution row vector that it has obtained after the searching procedure ('bestSolution').
2. The value of the solution that it has obtained according to the objective function ('FEVAL').

## Example call
In order to launch the optimization procedure to solve the 'Sphere' test problem with 2 real variables in ranges [-100, 100] by using a population of 20 students along 30 cycles this is the call that could be used:

>> [bestSolution, FEVAL] = TLBOSearch(@Sphere, 20, 30, [-100 100; -100 100]);

The results will be saved in the variables 'bestSolution' (the solution found by TLBO) and 'FEVAL' (the value of the solution found according to the objective function)

## License
This software is provided with any kind of warranties about its correctness, stability, accuracy, efficiency... just with the best of intentions to be used by anyone interested at it. The tool can be freely re-distributed and modified while keeping its free usage and modification license while also referencing the original authors of the algorithm (Rao et al.) and this source.

## References

[1] R.V. Rao, V.J. Savsani and D.P. Vakharia. _Teaching-Learning-Based Optimization: An optimization method for continuous non-linear large scale problems_. Information Sciences, , 183(1), 1-15, 2012.

[2] R.V. Rao, The TLBO Homepage: (https://sites.google.com/site/tlborao/home)
