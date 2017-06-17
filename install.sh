#!/bin/bash

echo "Installing Raspberry pi GPIO python library"
sudo apt-get install python-dev python-rpi.gpio

echo "Adding showimages to .bashrc"
echo "/home/pi/showimages.sh" >> /home/pi/.bashrc

echo "Creating usb mount point"
mkdir /home/pi/usbmount

echo "Creating image dir"
mkdir /home/pi/images
mv /home/pi/nopics.png /home/pi/images

echo "Add reboot Script"
sudo sh -c "echo 'sudo python /home/pi/poweroff.py &' >> /etc/rc.local"

echo "Installing Linux frame buffer image viewer"
sudo apt-get install fbi

echo "Adjusting HDMI configuration for 5 inch Waveshar display"
sudo sh -c "echo 'hdmi_group=2' >> /boot/config.txt"
sudo sh -c "echo 'hdmi_mode=1' >> /boot/config.txt"
sudo sh -c "echo 'hdmi_mode=87' >> /boot/config.txt"
sudo sh -c "echo 'hdmi_cvt 800 480 60 6 0 0 0' >> /boot/config.txt"
echo "Rebooting...."
sleep 10
sudo reboot
