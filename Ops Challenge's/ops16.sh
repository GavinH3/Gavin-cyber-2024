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

check_number() {
  echo "please enter a number between 1 and 10:"
  read number

  if [ "$number" -ge 5 ]; then
    echo "Your number is grater than 5."
    echo "Your number is: $number"
  elif  [ "$number" -le 5 ]; then
    echo "Your number is less than 5"
    echo "Your number is: $number"
  elif [ "$number" -eq 5 ]; then
    echo "Your number is equal to 5"
    echo "Your number is: $number"
  else
    echo "Please enter a vaild number that is between 1 and 10"
    echo "You put in: $number"
  fi
}
check_number
