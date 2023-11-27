import socket

IP = socket.gethostbyname(socket.gethostname())
PORT = 4450 # Uncommonly known port to test
ADDR = (IP, PORT)
FORMAT = "utf-8"
SIZE = 1024
"""
 2 options when it comes to sending data
    #1 Format the data types into a single data structure
        Proccess: Convert all data into string format in order to store into a single data structure
        
    #2 Format the data types into its respective data structure
        Proccess: Identifies the data and stores it in a respective data structure
"""

def main():
    # Server Object
    client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    client.connect(ADDR)
    
    try:
        while True:
            sensor_data = "Insert sensor data"
            
            # Send data to the server
            client.send(sensor_data.encode(FORMAT))
            
            # Recieve response from the server
            response = client.recv(SIZE).decode(FORMAT)
            print("SERVER Response:", response)
            
            # Delay in seconds
            time.sleep(1)
    finally:
        # Closing connection with server
        client.close
        print("Disconnected from the server. ")
        
if __name__ == "__main__":
    main()
