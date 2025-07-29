# Create a Python script that performs the following:

# Prompt the user to type a string input as the variable for your destination URL.

# Prompt the user to select a HTTP Method of the following options:
# GET
# POST
# PUT
# DELETE
# HEAD
# PATCH
# OPTIONS
# Print to the screen the entire request your script is about to send. Ask the user to confirm before proceeding.
# Add some comments of what these request are doing to your script
# Using the requests library, perform a GET request to your github.

# For the given header, translate the codes into plain terms that print to the screen; for example, a 404 error should print Site not found to the terminal instead of 404.
#response = requests.get()
# For the given URL, print response header information to the screen.
#from urllib import response
#import requests
#b = input("Get, Post, Put, Delete , Head, Patch, Options:")


import requests


url = input("Enter the destination URL: ")


method = input("Choose HTTP Method (GET, POST, PUT, DELETE, HEAD, PATCH, OPTIONS): ").upper()


print(f"\nYou are about to send the following request:\nURL: {url}\nHTTP Method: {method}")
confirm = input("Do you confirm this request? (yes/no): ").lower()

if confirm == "yes":

    if method == "GET":
        response = requests.get(url)
    elif method == "POST":
        response = requests.post(url)
    elif method == "PUT":
        response = requests.put(url)
    elif method == "DELETE":
        response = requests.delete(url)
    elif method == "HEAD":
        response = requests.head(url)
    elif method == "PATCH":
        response = requests.patch(url)
    elif method == "OPTIONS":
        response = requests.options(url)
    else:
        print("Invalid HTTP Method.")
        exit(1)


    status_codes = {
        200: "OK",
        201: "Created",
        400: "Bad Request",
        401: "Unauthorized",
        403: "Forbidden",
        404: "Not Found",
        405: "Method Not Allowed",
        500: "Internal Server Error",
        502: "Bad Gateway",
        503: "Service Unavailable"
    }


    status_message = status_codes.get(response.status_code, f"Error: {response.status_code}")
    print(f"Response Status: {status_message}")


    print("\nResponse Headers:")
    for key, value in response.headers.items():
        print(f"{key}: {value}")

else:
    print("Request cancelled.")





