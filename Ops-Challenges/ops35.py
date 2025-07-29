# We are going to use the psutil command to format a script to check these items.  cpu times, cpu percentatge, disk partion's, users and net connections.
# You may have to do some extra modification to make the ouput be more readable.


import psutil



def main():

    cpu_times = psutil.cpu_times()
    print(f"CPU Times: User={cpu_times.user} System={cpu_times.system} Idle={cpu_times.idle}")


    print(f"CPU Usage: {psutil.cpu_percent(interval=1)}%")


    print("Disk Partitions:")
    for partition in psutil.disk_partitions():
        usage = psutil.disk_usage(partition.mountpoint)
        print(f"{partition.device} - {usage.percent}% used, {usage.total / (1024**3):.2f} GB total")


    print("Users:")
    for user in psutil.users():
        print(f"{user.name} logged in at {user.started}")


    print("Network Connections:")
    for conn in psutil.net_connections(kind='inet'):
        print(f"Local: {conn.laddr} Remote: {conn.raddr} Status: {conn.status}")

if __name__ == "__main__":
    main()

