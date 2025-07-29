# Today in Class we are building the childhood game Rock Paper Scissors
# We are going to import the random function for our code today
# Bonus objective can you put it on a while loop to play again
# Do not just google the game and copy paste, If you would like to look at a completed version if you get stuck on a step please do so.
#Write your code below this line:

import random

choices = ["rock", "paper", "scissors"]

while True:
  player_choice = input("Enter 'rock', 'paper', or 'scissors': ").lower()
  if player_choice not in choices:
    print("Invalid choice. Try again.")
    continue

  computer_choice = random.choice(choices)
  print(f"You chose {player_choice}, Computer chose {computer_choice}.")

  if player_choice == computer_choice:
    print("It's a tie!")
  elif (player_choice == "rock" and computer_choice == "scissors") or \
    (player_choice == "paper" and computer_choice == "rock") or \
    (player_choice == "scissors" and computer_choice == "paper"):
    print("You win!")
  else:
      print("You lose!")

  play_again = input("Play again? (yes/no): ").lower()
  if play_again != "yes":
    print("Thanks for playing!")
    break
