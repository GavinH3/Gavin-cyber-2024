# Write a multi-line comment with your name, favorite food, and dream job on 3 different lines.

#Gavin
#Nachos
#My dream Job is to own a company

# assign 5 different data types to 5 different variables. At least one datatype must be a string.

interger_var = 58
float_var = 5.5
string_var = "Hello World!"
list_var = 1,2,3,4
boolean_var = True
# print the length of your string.
print (len(string_var))

# create a new variable called savvy, and assign it the string with this phrase "Learning Python is Awesome!
savvy = "Learning Python is AWESOME!"

# Replace "Awesome" with "great" in the string

savvy = savvy.replace("AWESOME", "Great")

# Create and assign 3 more variables called name, age and length using the multi-variable naming method.

name,age,length = "Alice",89,7.0

print (name,age,length)
# Format a new string called 'miniBio' using variables in curly brackets to complete this phrase... "Hi my name is (name), I am (tall) and (so) old today."

miniBio = f"Hi my name is {name}, I am {length} Feet Tall and {age} Years old today."
print(miniBio)
