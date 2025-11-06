#part 1
#number=int(input("Enter a number:"))
#if number % 2 == 0:
#  print("even")
#else:
#  print("odd")

#part 2
while True:
  number=int(input("Enter a number:"))
  if number % 2 == 0:
    print("even")
  else:
    print("odd")

  if input("Quit? (y/n):").lower() == "y":
    break


