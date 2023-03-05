#!/bin/bash

func1(){
echo "This msg is from function 1"
}
func2(){
echo "This msg is from function 2"
}
func3(){
echo "This msg is from function 3"
}

echo "Enter the number 1, 2 or 3"
read NUM

func$NUM


