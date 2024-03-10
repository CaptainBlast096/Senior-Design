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

if ! command -v mysql-server &> /dev/null
then
echo 'MySQL is not installed. Installing...'
sudo apt install MySQL -y #Error installing MySQL
echo 'MySQL has been installed'
echo 'Enabling MySQL'
sudo systemctl enable mysql.service
else
echo 'MySQL is already installed'
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

if ! command -v serial &> /dev/null
then
echo 'Serial is not installed. Installing...'
pip3 install serial 
echo 'Serial has been installed'
else
echo 'Serial is already installed'
fi
