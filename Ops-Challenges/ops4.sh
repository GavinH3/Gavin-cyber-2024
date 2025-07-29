#!/bin/bash

# Lets create a function in bash that adds two number together
# Stretch goal can you do subtraction, multipliaction or division
# You will need to declare two variables




add_numbers () {                        #function
    sum=$((number1 + number2))          #It calculates the sum of two variables, number1 and number2, and stores the result in Sum
    echo "the sum of $number1 and $number2 is $sum"     #It prints a message showing the two numbers and their sum.
}
number1=10
number2=8
add_numbers

