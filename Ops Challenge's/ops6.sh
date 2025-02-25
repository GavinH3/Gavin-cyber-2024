#!/bin/bash
# Install whois on your Ubuntu

# Add to your bash script a sixth option that calls a function to:

# Take a user input string. Presumably the string is a domain name such as Google.com.
# Run whois against a user input string.
# Run dig against the user input string.
# Run host against the user input string.
# Run nslookup against the user input string.
# Output the results to a single .txt file and open it with your favorite text editor.

# For this challenge you must use at least one variable and one function.

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


) >file2.txt

}

My_fuction


