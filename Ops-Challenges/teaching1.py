# Ask the user for their age

age = int(input("How Old Are You?"))

# If the person is 18 or older, they are an adult

if age >= 18:
  print("You are an Adult! You cam vote and drive.")

elif age < 13:
  print("You're a child! Enjoy your cartoons and snacks!")

else:
  print("You're a teenager! keep learning and having fun.")

# If the person is younger than 13, they are a child

# Otherwise, they are a teenager
