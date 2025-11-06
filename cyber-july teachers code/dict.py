users = {"Gavin": 25, "bob" : 30}

# Print value for "alice"
print(users["Gavin"])

# Safely get value for "charlie"
print(users.get("charlie", "Not found"))

# Add a new user
users["charlie"] = 28

print(users)
