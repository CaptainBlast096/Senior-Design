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

if ! command -v python &> /dev/null
then
echo 'Python is not installed. Installing...'
sudo apt install python -y
echo 'Python has been installed'
else
echo 'Python is already installed'
fi

if ! command -v mysql-server &> /dev/null
then
echo 'MySQL is not installed. Installing...'
sudo apt install MySQL -y
echo 'MySQL has been installed'
else
echo 'MySQL is already installed'
fi

if ! command -v git &> /dev/null
then
echo 'Git is not installed. Installing...'
sudo apt install git -y
echo 'Git has been installed'
else
echo 'Git is already installed'
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
if ! command -v apache2 &> /dev/null
then
echo 'Time is not installed. Installing...'
sudo apt install python3-time -y
echo 'Time has been installed'
else
echo 'Time is already installed'
fi
