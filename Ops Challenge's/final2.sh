#!/bin/bash
#using a While Loop

# Introduction
echo "Welcome, Adventurer! You are embarking on a journey through the vast tech world."
echo "Your goal is to complete quests and gather valuable network knowledge!"
echo "Choose your path wisely, and may the best techie win!"
echo "Type 'exit' at any time to quit the game."

# starting score
score=0

# Function for adding points to the score
add_points() {
  let score+=10
  echo "You earned 10 points! Your current score is: $score"
}

# Main game loop
while true; do
  echo "What would you like to do today, adventurer?"
  echo "1. Explore your Documents folder (Find hidden treasures)" #list the documents in the doocument folder
  echo "2. Survey your network (Discover devices on your network)" # list all the devices on the network
  echo "3. Ping a website or IP address (Test the waters of the web)" # Pings a website or a ip address
  echo "4. Run ip config (Uncover your system’s secrets)" #Run IP config
  echo "5. Run Whois, Dig, Host, Nslookup on a Domain (Unveil the mysteries of the internet)"
  echo "6. Exit (Quit your adventure)"
  read choice

#case statments
  case $choice in
  1) #listing documents in the documents folder
    echo "You decided to explore your Documents folder."
    echo "Inside your Documents folder, you find:"
    cd ~/Documents                                          #This will CD into your Documents folder
    ls                                                      #This will list eveything in your documents Folder
    add_points                                              #This will Add points
    ;;
    2)  # Listing all devices on the network
      echo "You decide to survey your network."
      echo "You are listing devices on your network: ..." | tee -a Devicesonnetwork.txt       #tee -a Devicesonnetwork.txt: this command will output the rezults into a file and the Termanal
      arp -a | awk '{print $1, $2, $3, $4}' | tee -a Devicesonnetwork.txt                     #|awk '{print $1, $2, $3, $4}' : this helps with a clean output and it only outputs the first 4 columns
      add_points                                                                              # arp -a: this command is what list all the devices on the network
      ;;
    3)  # Pinging a website or IP address
      echo "You wish to test the waters of the web."
      echo "Enter an IP address or website to ping:"
      read ip_address
      echo "Pinging $ip_address..." | tee -a pingIPaddress.txt                                #-c 5 tells it to only ping 5 times
      ping -c 5 "$ip_address" | tee -a pingIPaddress.txt
      add_points
      ;;
    4)  # Running ip config
      echo "You decide to uncover your system’s secrets."
      echo "Running ip config..." | tee -a Ipconfig.txt
      ifconfig | tee -a Ipconfig.txt
      add_points
      ;;
    5)  # Running Whois, Dig, Host, Nslookup on a domain
      echo "You wish to unveil the mysteries of the internet."
      echo "Enter a domain name (e.g., google.com):"
      read domain

          #Running Whois (this gives you owner info, name of the servers, ip address info etc.)
      echo "Running Whois for $domain..." | tee -a Whois.DIG.Host.nslookup.txt
      whois $domain | tee -a Whois.DIG.Host.nslookup.txt

          #running dig ( this will give you ip address, verafy DNS config, check for DNS records)
      echo "Running Dig for $domain..." | tee -a Whois.DIG.Host.nslookup.txt
      dig $domain | tee -a Whois.DIG.Host.nslookup.txt

          # this command will run host (This will give you IP address of the domain, simplified DNS Query, Check DNS records )
      echo "Running Host for $domain..." | tee -a Whois.DIG.Host.nslookup.txt
      host $domain | tee -a Whois.DIG.Host.nslookup.txt

# this is running Nslookup (gives you nameserver info, looks up specific DNS info, Gives info about the domain )
      echo "Running Nslookup for $domain..." | tee -a Whois.DIG.Host.nslookup.txt
      nslookup $domain | tee -a Whois.DIG.Host.nslookup.txt
      add_points
      ;;
    6)  # Exit the game
      echo "You have decided to leave your adventure for today. Goodbye!"
      echo "Your final score is: $score"
      exit 0
      ;;
    *)  # Invalid entry
      echo "That was an invalid choice. Please choose a valid option."
      ;;
  esac3
done
