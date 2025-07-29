#!/bin/bash
# Today we are going to use a case statment instead of a conditional
# Have the program ask how your day is and echo out a response for good or bad
# Case statment format is a little different so please look up how this would be formated
# https://linuxize.com/post/bash-case-statement/

echo "How is your day going?"
read day

case $day in
good | Good)
  echo "Thats good! Keep it up!"
  ;;
bad | Bad)
  echo "aw im sorry, Hope it gets better! Remember your Awesome!"
  ;;
ok | OK)
  echo "well it could be worse, I hope the day get even better!"
  ;;
*)
  echo "Humm, I don't understand that. I hope ypu are doing well!"
  ;;
esac
