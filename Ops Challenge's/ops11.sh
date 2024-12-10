#!/bin/bash
# Given three integers (, , and ) representing the three sides of a triangle, identify whether the triangle is scalene, isosceles, or equilateral.
# If all three sides are equal, output EQUILATERAL.
# Otherwise, if any two sides are equal, output ISOSCELES.
# Otherwise, output SCALENE.
# Input Format
# Three integers, each on a new line.
# Constraints
# The sum of any two sides will be greater than the third.
# Output Format
# One word: either "SCALENE" or "EQUILATERAL" or "ISOSCELES" (quotation marks excluded).
# Hint &&(and) ||(or)

echo "Enter side 1"
read side1

echo "Enter side 2"
read side2

echo "Enter side 3"
read side3

if [ "$side1" -eq "$side2"  ] && [ "$side2" -eq "$side3" ]; then
  echo "EQUILATERAL"
elif [ "$side1" -eq "$side2" ] || [ "$side2" -eq "$side3" ] || [ "$side1" -eq "$side3" ]; then
  echo "ISOSCELES"
else
  echo "SCALENE"
fi
