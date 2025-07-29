# Your challenge tonight is to write a basic adventure game using some of the
#code provide below and using if/elif statments

yes_no = ["yes", "no"]
directions = ["left", "right", "forward", "backward"]

# Introduction
name = input("What is your name, adventurer?\n")
print("Greetings, " + name + ". Let us go on a quest!")
print("You find yourself on the edge of a dark forest.")
print("Can you find your way through?\n")

# Start of game
response = ""
while response not in yes_no:
    response = input("Would you like to step into the forest?\nyes/no\n")
    if response == "yes":
        print("You head into the forest. You hear crows cawwing in the distance.\n")
    elif response == "no":
        print("You are not ready for this quest. Goodbye, " + name + ".")
        quit()
    else:
        print("I didn't understand that.\n")



response = ""
while response not in directions:
    response = input("You come across a fork in the path. Do you go left, right, forward or backwards?\n")
    if response == "left":
        print(" you landed in a trap, your leg was cut off, Your quest ends here. Goodbye!")
        quit()
    elif response == "right":
        print("You encounter a wild bear! It growls at you, and you decide to run. The Bear catchs you.")
        print("Your journey ends here. Goodbye!")
        quit()
    elif response == "forward":
        print("You continue forward and find a glowing stone. You pick it up, and a magical portal appears!")
        print("You are teleported to a new world. Congratulations, you've completed the quest!")
        quit()
    elif response == "backwards":
        print( "goodbye " + name + ".")
        quit()
    else:
        print("I didn't understand that. Please choose again.\n")

