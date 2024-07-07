#!/bin/bash

path="../simulations_c/"
sample=1000000
# Array to loop over
Nt=(4 6 8 10)
ratio=5


for Nti in "${Nt[@]}"
do 
	julia th_free_scalar_main.jl "$Nti" "$ratio" "$sample"
done


