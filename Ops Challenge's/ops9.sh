#!/bin/bash
# Lets create a while loop than runs a conditinal statment
#Ask the user for an input if they choose:
# 1 then echo hello world
# 2 ping a website or ip address
# 3 run ifconfig
# else echo invalid entry

while [ True ]; do

  echo "please Choose a Option:"
  echo "1: echo 'Hello World'"
  echo "2: echo 'Ping a website or IP address'"
  echo "3: echo 'Run ifconfig'"
  echo "4: echo 'Exit'"
  read choice

if [ "$choice" -eq 1 ];then
  echo "Hello World"
elif [ "$choice" -eq 2 ];then
  echo "ping savvycoders.."
  ping -c 2 savvycoders.com
elif [ "$choice" -eq 3 ];then
  echo "Here's your ping info:"
  ifconfig

else
  echo "Invalid Entry"
  break
fi
done
