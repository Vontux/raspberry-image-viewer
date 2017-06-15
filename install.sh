#!/bin/bash

echo "Installing Raspberry pi GPIO python library"
sudo apt-get install python-dev python-rpi.gpio

echo "Adding showimages to .bashrc"
echo "/home/pi/showimages.sh" >> /home/pi/.bashrc

echo "Creating usb mount point"
mkdir /home/pi/usbmount

echo "Creating image dir"
mkdir /home/pi/images

echo "Installing Linux frame buffer image viewer"
sudo apt-get install fbi
