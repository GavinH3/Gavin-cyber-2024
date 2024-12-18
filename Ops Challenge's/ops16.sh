#!/bin/bash
# Create a script that ask the user for a number between 1 and 10.  Have the script tell the user if there
# number is greater than 5, less than 5, or equal to 5.  Please use an if/else or elif statement to make this happen.
# Also put the if/else statemnt inside a function.
# -eq = equal
# -ne = are not equal
# -gt = greater than
# -ge = greater or equal to
# -lt = less than
# -le = less than or equal to
# >= (Greater than or equal to)
# <= (Less than or equalk to)
# > (Greater)
# < (Less)
# == (comparison)
# % (Remainder)
# * (Multiply)
#Here are some helpful commands to make this happen.

function check_number() {

  if [ $1 -gt 5 ]; then
    echo "Your number is greater than 5."
  elif  [ $1 -lt 5 ]; then
    echo "Your number is less than 5"
  elif [ $1 -eq 5 ]; then
    echo "Your number is equal to 5"
  else
    echo "Please enter a vaild number that is between 1 and 10"
  fi
  echo "You Number is: $1"
}

read -p "Enter a number between 1 and 10: " input

while [ true ]; do
  if [ $input -gt 0 ] && [ $input -lt 11 ]; then
    break
  else
    read -p "Invalid, enter a number between 1 and 10: " input
  fi
done

check_number $input
