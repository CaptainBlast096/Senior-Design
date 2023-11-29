import serial
import time
import logging
# Use 'python -m serial.tools.list_ports' to find port connection
    # Found port should have 'serial' in the name
    
serialConnection = serial.Serial(port='insert port name in here',baudrate=9600 )
    # baudrate is the rate at which the number of singla elements occurs per second
        # Can modify in the Raspberry Pi and have it match here
        # Default should be set to 9600
        
while True: # Loop is running for infinity adjust it how you see fit
    value = serialConnection.readline()
    valueInString = str(value, 'UTF-8')
    print(valueInString)
        # Will convert the output to a string and print
        
# serialConnection.close()
    # Will stop the connection 
    
    
# Will try to implement a data structure to hold the information
      # Also add error handling and use the time library for delays 
      # Maybe will use logging library for sending flags
