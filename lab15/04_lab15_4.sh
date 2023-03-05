#!/bin/bash

echo "What number 1 or 2? Choose wisley my friend..."
read NUM

if [ $NUM == 1 ] ; then
	echo "YES"
elif [ $NUM == 2 ] ; then
	echo "NO"
else 
	echo "Error input"
fi
