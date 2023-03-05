#!/bin/bash

echo "ENTER the letter to choose the operation 
a - ADD
s - SUM
m - MULTIPLY
d - DIVIDE"


read OPR
if ! [[ "$OPR" =~ ^(a|s|m|d)$ ]]  ; then
	echo "Bad or missing input value, try again"
	exit 1	
fi

echo "ENTER first number: "
read NUM1

echo "ENTER second number: "
read NUM2

if ! [[ $NUM1 && $NUM2 =~ ^[0-9]+$ ]] ; then
	echo "Wrong values, enter Numbers"
	exit 1
fi

let x=( $NUM1+$NUM2 ) ; if "$OPR" == a ; then ;  echo $x ; fi

