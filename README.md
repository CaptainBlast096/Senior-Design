# Senior-Design
Program for Indsutrial Computer for Measutronics
This repository contains the initial version (1.0) of a Python script designed for real-time data transmission from a sensor-equipped device (e.g., Raspberry Pi) to a server.
# Version 1.0
 The script establishes a socket connection over a specified port and sends sensor data to the server, receiving responses in return.
Features

    * Flexible Data Handling:
        The script can proccess data in two options:
            Option 1: Format all data types into a single data structure, converting everything into string format.
            Option 2: Format data types into their respective data structures, identifying and storing each type appropriately.

    * User-Defined Sensor Data:
        Users can easily modify the sensor_data variable to include actual sensor values.

    Customizable Connection:
        Users can specify the IP address and port for the server connection.

## Usage:

    * Clone the repository.
    * Update the sensor_data variable with actual sensor data.
    * Run the script to establish a connection and transmit data.

## Future Enhancements

    * Dynamic Data Handling:
        Implement dynamic data structures to handle varying data types efficiently.

    * Improved User Interaction:
        Enhance the script to accept user inputs for a more interactive experience.
