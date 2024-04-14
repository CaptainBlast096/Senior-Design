import serial
import time

#Used for finding the avilable COM port
    # import serial.tools.list_ports

    # List available ports
    #ports = list(serial.tools.list_ports.comports())
    #for p in ports:
        #print(f"Available port: {p.name}")

# Use 'python -m serial.tools.list_ports' to find port connection
    # Found port should have 'serial' in the name
Attitude = []
Draught = []
Fuel = []
Heading = []
Position = []
XYZ = []
      
serialConnection = serial.Serial(port='/dev/ttyUSB0',baudrate=9600 )
    # baudrate is the rate at which the number of singla elements occurs per second
        # Can modify in the Raspberry Pi and have it match here
        # Default should be set to 9600
        
while True: # Loop is running for infinity adjust it how you see fit
    try:
        value = serialConnection.readline()
        valueInString = str(value, 'UTF-8')
        if valueInString:
            print(valueInString)
            # Will convert the output to a string and print
            #Send messages to arrays 
        if valueInString.startswith('$PIHC'):
            Draught.append(valueInString)
            
        elif valueInString.startswith('$PPDS'):
            Fuel.append(valueInString)
            
        elif valueInString.startswith('$ECHDT'):
            Heading.append(valueInString)
            
        elif valueInString.startswith('$GPGGA'):
            Position.append(valueInString)
            
        elif valueInString.startswith('$GLTOP'):
            XYZ.append(valueInString)
            
        elif valueInString.startswith('$PHTRO'):
            Attitude.append(valueInString)
        # 1st test to see if contents are stored in respective arrays 2nd Check if any data will be leaked 3rd The limitations of contact data being stored in arrays    
        print("Fuel: ", Fuel)
    except Exception as e:
        print(f"Error: {e}")
# serialConnection.close()
    # Will stop the connection 
