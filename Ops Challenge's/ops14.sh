#!/bin/bash
# Create a script that you think you would use in a daily job routine No right or Wrong anwsers here
# You could ping all the devices in your network?
# Run a script to reset your ip address?
# Create a script that does some math?

function display_menu() {
  echo "what would you like to do?"
  echo "1. Add"
  echo "2. Subtract"
  echo "3. Multiply"
  echo "4. Devide"
  echo "5. Exit"

}



function Add() {
  result=$(( $1 + $2 ))
  echo "$1 + $2 = $result"
}

function Subtract() {
  result=$(( $1 - $2 ))
  echo "$1 - $2 = $result"
}

function Multiply() {
  result=$(( $1 * $2 ))
  echo "$1 * $2 = $result"
}

function Divide() {
  result=$(( $1 / $2 ))
  echo "$1 / $2 = $result"
}

echo "Enter your first number:"
read num1

echo "Enter your Second number:"
read num2

while true; do
  display_menu
  read -p "Select an option" choice


  case $choice in
    1) Add $num1 $num2 ;;
    2) Subtract $num1 $num2 ;;
    3) Multiply $num1 $num2 ;;
    4) Divide $num1 $num2 ;;
    5) echo "Exiting..."; break ;;
    *) echo "Invalid option, please try again." ;;
  esac
done

