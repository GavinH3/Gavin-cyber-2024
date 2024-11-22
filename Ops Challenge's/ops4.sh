#!/bin/bash

# Lets create a function in bash that adds two number together
# Stretch goal can you do subtraction, multipliaction or division
# You will need to declare two variables




add_numbers () {
    sum=$((number1 + number2))
    echo "the sum of $number1 and $number2 is $sum"
}
number1=10
number2=8
add_numbers


subtract_numbers () {
  differences=$((number1 - number2))
  echo "$number1 - $number2 = $differences"
}
number1=5
number2=10
subtract_numbers

Multiply_numbers(){
  local product=$((number1 * number2))
  echo "$number1 * $number2 = $product"
}
number1=40
number2=100

Multiply_numbers
