# Bob wants to create a guessing number game!
# Rule 1: Numbers have to be between 1 and 20
# Rule 2: Program must run until the correct number is guessed
# Rule 3: When guessed right, print out how many tries to guess the
# right number. Example: "Yes! You guessed it in ___ guesses."
# Rule 4: The program will tell you if your number needs to be HIGHER
# or LOWER
# until the number is guessed correctly and the program ENDS.
# Remeber to import the random function
#Bonus objective can you put it into a loop to make the game end after 3 turns?

import random

def guessing_game():


  target_number = random.randint(1,20)
  max_turns = 3

  for tries in range(1, max_turns + 1):
    guess = int(input(f"Attempt {tries}: guess a number between 1 and 20: "))

    if guess == target_number:
      print(f"Yes! You guessed it in {tries} guesses.")
      break

    elif guess < target_number:
      print("Higher!.")

    else:
      print("Lower!")

  else:
    print(f"Sorry, you've run out of turns. The correct number was {target_number}.")


guessing_game()
