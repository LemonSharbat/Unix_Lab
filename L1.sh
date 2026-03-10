#!/bin/bash

echo "Enter 3 numbers"
read a
read b
read c


# Greater
if [ $a -ge $b ] && [ $a -ge $c ]; then
    echo "$a is greater"
elif [ $b -ge $c ]; then
    echo "$b is greater"
else
    echo "$c is greater"
fi


# Smaller
if [ $a -le $b ] && [ $a -le $c ]; then
    echo "$a is smaller"
elif [ $b -le $c ]; then
    echo "$b is smaller"
else
    echo "$c is smaller"
fi