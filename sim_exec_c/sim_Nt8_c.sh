#!/bin/bash

#questa va in Ntequals8.log
path="../simulations_c"
sample=5000000
# Array to loop over
Nt=(8)
ratio=5


for Nti in "${Nt[@]}"
do 
	julia th_free_scalar.jl  "$ratio" "$Nti" "$sample"
done

