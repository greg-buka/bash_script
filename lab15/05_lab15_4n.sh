#!/bin/bash

echo "What number 1 or 2? Choose wisley my friend..."
read NUM

if [ $NUM -eq  1 ] ; then
	echo "YES"
elif [ $NUM -eq  2 ] ; then
	echo "NO"
else 
	echo "Error input"
fi
