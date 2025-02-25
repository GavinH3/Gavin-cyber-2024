#!/bin/bash



#Ask ing user for input:

while [ True ]; do

echo "What would you like to do today?"
echo "1. List files in your documents folder"
echo "2. List all devices on your network"
echo "3. Ping a website or ip address"
echo "4. Run ip config"
echo "5. Run Whois, Dig, Host, Nslookup on a Domain"
echo "6. play a game!"
echo "7. exit"
read choice

#listing all the files in the users documents folders
if [ "$choice" -eq 1 ];then
  echo "Listing files in your documents folder:"
    cd ~/documents
    echo "files in Documents:"
    ls


#listing all the devices on the users network with Arp -a

elif [ "$choice" -eq 2 ]; then
  echo "Listing all devices on your network:"
  echo "Listing devices on the network: ..." | tee -a Devicesonnetwork.txt
  arp -a | awk '{print $1, $2, $3, $4}' | tee -a Devicesonnetwork.txt
#awk '{print $1, $2, $3, $4}': This command will clean up the arp -a output by only printing the first four columns
#tee -a Devicesonnetwork.txt: As before, this will send the cleaned output to both the terminal and append it to the file Devicesonnetwork.txt.

#Pinging a website or ip address command
elif [ "$choice" -eq 3 ]; then
  echo "Pinging a website or ip address:"
  echo "Enter an IP address to ping"
    read ip_address

  echo "pinging your device:" | tee -a pingIPaddress.txt
    ping -c 5 "$ip_address" | tee -a pingIPaddress.txt


#running Ip config command
elif [ "$choice" -eq 4 ]; then
  echo "Running ip config:"
  echo "Here's your ping info:" | tee -a Ipconfig.txt
    ifconfig | tee -a Ipconfig.txt


elif [ "$choice" -eq 5 ]; then
My_fuction() {
echo "Enter Domain Name (e.g., google.com):"
read domain

# Run whois against a user input string
(
  echo "Running whois for $domain..."
  whois $domain


# Run dig against the user input string.
  echo "Running dig for $domain..."
  dig $domain

# Run host against the user input string.
  echo "Running Host for $domain..."
  host $domain

# Run nslookup against the user input string.
  echo "Running nslookup for $domain..."
  nslookup $domain


) >Whois.DIG.Host.nslookup.txt

}

My_fuction


# This is the game we made In python
elif [ "$choice" -eq 6 ]; then
# Arrays for yes/no responses and directions
yes_no=("yes" "no")
directions=("left" "right" "forward" "backward")

# Introduction
echo "What is your name, adventurer?"
read name
echo "Greetings, $name. Let us go on a quest!"
echo "You find yourself on the edge of a dark forest."
echo "Can you find your way through?"

# Start of game
response=""
while [[ ! " ${yes_no[@]} " =~ " $response " ]]; do
    echo "Would you like to step into the forest? (yes/no)"
    read response
    if [[ "$response" == "yes" ]]; then
        echo "You head into the forest. You hear crows cawing in the distance."
    elif [[ "$response" == "no" ]]; then
        echo "You are not ready for this quest. Goodbye, $name."
        exit 0
    else
        echo "I didn't understand that."
    fi
done

response=""
while [[ ! " ${directions[@]} " =~ " $response " ]]; do
    echo "You come across a fork in the path. Do you go left, right, forward or backward?"
    read response
    if [[ "$response" == "left" ]]; then
        echo "You landed in a trap, your leg was cut off. Your quest ends here. Goodbye!"
        exit 0
    elif [[ "$response" == "right" ]]; then
        echo "You encounter a wild bear! It growls at you, and you decide to run. The bear catches you."
        echo "Your journey ends here. Goodbye!"
        exit 0
    elif [[ "$response" == "forward" ]]; then
        echo "You continue forward and find a glowing stone. You pick it up, and a magical portal appears!"
        echo "You are teleported to a new world. Congratulations, you've completed the quest!"
        exit 0
    elif [[ "$response" == "backward" ]]; then
        echo "You where not ready for this Quest goodbye, $name."
        exit 0
    else
        echo "I didn't understand that. Please choose again."
    fi
done

elif [ "$choice" -eq 7 ]; then
  echo "Goodbye!"
exit 0

else
  echo "invalid entry"
fi
done

