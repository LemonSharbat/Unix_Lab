#!/bin/bash

echo "Choose your operation:
    + : Addition
    - : Subtraction
    * : Multiplication
    / : Division"

# or use \n - nextline \t - tab space

read -p "Enter your choice: " ch
read -p "Enter the first number: " a
read -p "Enter the second number: " b

case "$ch" in

'+')
    y=$(expr "$a" + "$b")
    echo "Sum of $a and $b = $y"
    ;;

'-')
    y=$(expr "$a" - "$b")
    echo "Difference of $a and $b = $y"
    ;;

'*')
    y=$(expr "$a" \* "$b")
    echo "Product of $a and $b = $y"
    ;;

'/')
    if [ "$b" -eq 0 ]; then
        echo "Division by zero not allowed"
    else
        y=$(expr "$a" / "$b")
        echo "Division of $a by $b = $y"
    fi
    ;;

*)
    echo "Invalid operator"
    ;;

esac