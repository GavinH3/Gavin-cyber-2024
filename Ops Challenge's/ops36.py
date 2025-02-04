# Write a program in python that splits the bill evenly between group.
# Ask how much they want to tip and how many people


#Example
#If the bill was $150.00, split between 5 people, with 12% tip.

#Each person should pay (150.00 / 5) * 1.12 = 33.6
#Format the result to 2 decimal places = 33.60

#Tip: There are 2 ways to round a number. You might have to do some Googling to solve this.💪

#Write your code below this line 👇



def split_bill():

  bill = float(input("Enter the total bill amount ($): "))
  tip_percentage = float(input("Enter the tip percentage (15 for 15% tip etc.): "))
  people = int(input("Enter the number of people: "))

  total_amount = bill * (1 + tip_percentage / 100)

  amount_per_person = total_amount / people

  amount_per_person = round(amount_per_person, 2)

  print(f"Each person should pay: ${amount_per_person:.2f}")

split_bill()
