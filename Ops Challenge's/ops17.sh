#!/bin/bash

# Challenge today is to create a script that list all the devices on the network and ask the user to ping one of the ip address.
# There is a few different ways to list all deivices on your network you could use an arp command or an nmap command.
# We will run the a command that prints all address then ask the user to ping a specific one by entering an ip address.

echo "Listing devices on the network: ..."
arp -a

echo "Enter an IP address to ping"
read ip_address

echo "pinging your device:"
ping -c 5 "$ip_address"
