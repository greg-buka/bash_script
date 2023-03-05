#!/bin/bash

echo "ENTER the letter to choose the operation 
a - ADD
s - SUM
m - MULTIPLY
d - DIVIDE"


read OPR
if [ "$OPR" != a ]  ; then
	echo "Bad or missing input value, try again"
	exit 1	
fi

