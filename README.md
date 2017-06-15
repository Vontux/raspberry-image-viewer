raspberry-image-viewer
======================

An automatic kiosk mode image viewer for Raspberry pi, Raspbian focused for use with PIs being used as picture frames.

Image viewer that loads all image files supported by the Linux frame buffer image viewer (fbi) from a usb drive (if present) and shows the image(s) fullscreen.

If no usb drive is present it loads an image that requests the user insert a USB drive with images and reboot the PI.

Requirements
------------
* Linux frame buffer image viewer (fbi)
* Use of Raspbian Lite
* Use of the Raspberry PI 3 (probably fine with PI2, B+ and A+)
* Use of 5 inch HDMI Waveshare display(easy to change this with minor code tweaks if you so desire).

Installation
------------

Automatic
* ./install.sh

Manual
* Add /home/pi/showimages.sh (or the path to the file) to your .bashrc file
* mkdir /home/pi/usbmount
* mkdir /home/pi/images
* sudo apt-get install fbi (if not already installed)
* sudo apt-get install python-dev python-rpi.gpio

Todo
----
