#!/bin/bash

# Today's challenges is to create a script in bash that naviagetes to the document directory and list the files in there
# Then ask the user to create or edit a file and opens the file up in the terminal


cd ~/documents
echo "files in Documents:"
ls
read -p "Create or edit file (name): " filename
if [ -z "$filename" ]; then
    echo "No filename provided."
    exit 1
fi
nano "$filename"

