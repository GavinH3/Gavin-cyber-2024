#1/bin/bash

# Lab: User greeting and file check
# TODO: Complete the script
#1. Open `102-1_lab.sh` in VS Code.
#2. Write a script that:
# Stores your name in a variable (e.g., `username="YourName"`)
#- Prints a greeting (e.g., “Hello, YourName!”)
#- Checks if `/var/log/syslog` exists and prints a message (e.g., “Syslog found!” or “Syslog missing!”)
#3. Save and run: `chmod +x 102-1.sh; ./102-1_lab.sh` in the WSL bash terminal.
#4. Note: If `/var/log/syslog` is missing in WSL, create a test file: `echo "test" > test.log` and check that instead.


name= "Gavin Houston"

echo "Hello, $name!"
