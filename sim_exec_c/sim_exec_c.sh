#!/bin/bash

path="../simulations_c/Tequalsm"
sample=5000000
# Array to loop over
Nt=(4 6 8 )
ratio=8


for Nti in "${Nt[@]}"
do 
	julia th_free_scalar.jl  "$ratio" "$Nti" "$sample"
done
#questa va in output.log