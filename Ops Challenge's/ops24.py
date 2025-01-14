# Write a program that works out whether if a given number is an
# odd or even number
# 🚨 Don't change the code below 👇
number = int(input("Which number do you want to check? "))
# 🚨 Don't change the code above 👆

#Write your code below this line 👇
def check_even_odd(number):
    if number % 2 == 0:
        return "Even"
    else:
      return "Odd"


result = check_even_odd(number)
print(f"The number {number} is {result}.")

print ("See you Soon!")
