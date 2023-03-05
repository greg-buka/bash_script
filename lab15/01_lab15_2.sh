#!/bin/bash

echo "Give me your proposition name to new directory."
read dir_name
mkdir $dir_name
cd $dir_name/
pwd
touch emp1 emp2 emp3
echo "Hello world" > emp1
echo "New skills brooo" > emp2
ls emp1
ls emp2
echo "Good Bye My Linux Master"
cd ..
rm -r $dir_name/
