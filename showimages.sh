#!/bin/bash

USBDIR="/home/pi/usbmount"
IMGDIR="/home/pi/images"

echo "mounting usb"
sudo mount -t vfat -o rw,users /dev/sda1 $USBDIR

# if usb folder is not empty (a usb with files on it is mounted)
if [ "$(ls -A $USBDIR)" ]
then
	echo "USB found, displaying images"
	fbi -a -u -t 12 --blend 200 --readahead --noverbose -T 1 $USBDIR/* -d /dev/fb0
	
else
	echo "USB with images NOT found, requesting images"
	#load image to request user input drive with images to load and reboot
	fbi -a -u -t 12 --blend 200 --readahead --noverbose -T 1 $IMGDIR/nopics.png -d /dev/fb0
	echo "unmount usb"
	umount $USBDIR
	#/usr/bin/fbi -a -noverbose -t 5  $IMGDIR/nopics.png
fi
