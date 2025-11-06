# socket.py

import socket

# Optional: set timeout to avoid hanging
s = socket.socket()
s.settimeout(100)  # seconds

# Try connecting to localhost on port 80
result = s.connect_ex(("localhost", 8080))

# Print result
print("Port open" if result == 0 else "Port closed")

s.close()
