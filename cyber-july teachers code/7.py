users = {"alice": {"ip": "192.168.1.1", "login": "2025-06-20"},
         "bob": {"ip": "10.0.0.1", "login": "2025-06-19"}}
for user, data in users.items():
    print(f"{user}: {data['ip']}")
