#!/bin/bash

# Variables to store data
attitude=()
draught=()
fuel=()
heading=()
position=()
xyz=()

# Open serial port
stty -F /dev/ttyUSB1 9600 raw -echo

# Infinite loop
while true; do
    # Read data from serial port
    value=$(cat /dev/ttyUSB1)
    # Process data
    if [[ "$value" ]]; then
        echo "$value"
        # Send messages to arrays
        if [[ "$value" == '$PIHC'* ]]; then
            draught+=("$value")
        elif [[ "$value" == '$PPDS'* ]]; then
            fuel+=("$value")
        elif [[ "$value" == '$ECHDT'* ]]; then
            heading+=("$value")
        elif [[ "$value" == '$GPGGA'* ]]; then
            position+=("$value")
        elif [[ "$value" == '$GLTOP'* ]]; then
            xyz+=("$value")
        elif [[ "$value" == '$PHTRO'* ]]; then
            attitude+=("$value")
        fi
        # Print fuel array
        echo "Fuel: ${fuel[@]}"
    fi
done
