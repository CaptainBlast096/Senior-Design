#!/bin/bash

## Update
echo 'Updating OS...' 
sudo apt-get update

## Installing files
if ! command -v vim &> /dev/null
then
echo 'Vim is not installed. Installing...'
sudo apt install vim -y
echo 'Vim has been installed'
else
echo 'Vim is already installed'
fi

if ! command -v python3 &> /dev/null
then
echo 'Python is not installed. Installing...'
sudo apt install python3 -y
echo 'Python has been installed'
else
echo 'Python is already installed'
fi

if ! command -v python3-pip &> /dev/null
then
echo 'Pip is not installed. Installing...'
sudo apt install python3-pip -y
echo 'Pip has been installed'
else
echo 'Pip is already installed'
fi

if ! command -v apache2 &> /dev/null
then
echo 'Apache Server is not installed. Installing...'
sudo apt install apache2 -y
echo 'Apache Server has been installed'
echo 'Enabling Apache Server'
sudo systemctl is-enabled apache2
else
echo 'Apache Server is already installed'
echo 'Enabling Apache Server'
sudo systemctl is-enabled apache2
fi

## Installing Libraries
if ! command -v time &> /dev/null
then
echo 'Time is not installed. Installing...'
pip3 time 
echo 'Time has been installed'
else
echo 'Time is already installed'
fi

if ! command -v pyserial &> /dev/null
then
echo 'PySerial is not installed. Installing...'
pip3 install pyserial 
echo 'PySerial has been installed'
else
echo 'PySerial is already installed'
fi

if ! command -v adafruit-circuitpython-mcp3xxx &> /dev/null
then
echo 'Adafruit Circuit Python is not installed. Installing...'
pip3 install adafruit-circuitpython-mcp3xxx
echo 'Adafruit Circuit Python has benn installed'
else
echo 'Adafruit Circuit Python is already installed'
fi

# New Shit

if ! command -v RPI.GPIO &> /dev/null
then
echo 'GPIO is not installed. Installing...'
pip3 install RPI.GPIO
echo 'GPIO has benn installed'
else
echo 'GPIO is already installed'
fi

if ! command -v adafruit-blinka &> /dev/null
then
echo 'adafruit-blinka is not installed. Installing...'
pip3 install RPI.GPIO
echo 'adafruit-blinka has benn installed'
else
echo 'adafruit-blinka is already installed'
fi

if ! command -v adafruit-io &> /dev/null
then
echo 'adafruit-io is not installed. Installing...'
pip3 install RPI.GPIO
echo 'adafruit-io has benn installed'
else
echo 'adafruit-io is already installed'
fi
