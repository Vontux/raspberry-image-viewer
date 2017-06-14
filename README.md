raspberry-image-viewer
======================

An automatic kiosk mode image viewer for Raspberry pi, Raspbian

Image viewer that loads images with predefined file extensions (.jpg and .png) from a usb drive (if present) and shows the image(s) fullscreen.

If no usb drive is present it loads the previously used images

Requirements
------------
Linux frame buffer image viewer (fbi)

Installation
------------

Automatic
* ./install.sh

Manual
* Add /home/pi/showimages.sh (or the path to the file) to your .bashrc file
* mkdir /home/pi/usbmount
* mkdir /home/pi/images
* sudo apt-get install fbi (if not already installed)

Todo
----
