#!/bin/bash

path="../simulations_c/"
sample=5000000
# Array to loop over
Nt=( 5 6 )
ratio=6


for Nti in "${Nt[@]}"
do 
	julia th_free_scalar.jl  "$ratio" "$Nti" "$sample"
done

