# Create a program using maths and f-Strings that tells us how many
# days, weeks, months we have left if we live until 90 years old.

# It will take your current age as the input and output a message
# with our time left in this format:

# You have x days, y weeks, and z months left.

# Where x, y and z are replaced with the actual calculated numbers.


# 🚨 Don't change the code below 👇
age = int(input("What is your current age? "))
# 🚨 Don't change the code above 👆

#Write your code below this line 👇

years_left = 90 - age


x = years_left * 365
y = years_left * 52
z = years_left * 12

print(f"You have { x } days, { y } weeks, and { z } months left.")
