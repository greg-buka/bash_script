#!/bin/bash

echo "ENTER the letter to choose the operation 
a - ADD
s - SUBTRACT
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


if ! [[  $NUM1 =~ ^[0-9]+$ ]] ; then
	echo "Wrong 1st value, enter Numbers"
	exit 1
fi
if ! [[ $NUM2 =~ ^[0-9]+$ ]] ; then
	echo "Wrong 2nd value, enter Numbers"
	exit 1
fi
if [ "$OPR" = a ] ; then let x=( $NUM1+$NUM2 ) ; echo $x

elif [ "$OPR" = s ] ; then echo $(($NUM1-$NUM2))

elif [ "$OPR" = m ] ; then echo $(($NUM1*$NUM2))

elif [ "$OPR" = d ] ; then
	if [ $NUM2 == 0 ] ; then echo "Cant divide by 0 - try again"
		exit 1
	fi
	echo "scale=2 ;  $NUM1 / $NUM2" | bc
fi

