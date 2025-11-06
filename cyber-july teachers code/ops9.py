log_entry = ("192.168.1.1", "2025-06-20")
print(log_entry[0])
try:
    num = int(input("Enter a number: "))
    print(f"Number: {num}")
except ValueError:
    print("Invalid number")
