raspberry-image-viewer
======================

An automatic kiosk mode image viewer for Raspberry pi, Raspbian focused for use with PIs being used as picture frames.

Image viewer that loads all image files supported by the Linux frame buffer image viewer (fbi) from a usb drive (if present) and shows the image(s) fullscreen.

If no usb drive is present it loads an image that requests the user insert a USB drive with images and reboot the PI.

Requirements
------------
* Linux frame buffer image viewer (fbi)
* GPIO library for python
* Use of Raspbian Lite. A fresh installation is assumed but may not necessaryily be required.
* Use of the Raspberry PI 3 (probably fine with PI2, B+ and A+)
* Use of 5 inch HDMI Waveshare display(easy to change this with minor code tweaks if you so desire).

Installation
------------
Copy files down into /home/pi then either run ./install.sh or follow manual instructions.

Automatic
* ./install.sh

Manual
* Add /home/pi/showimages.sh (or the path to the file) to your .bashrc file
* mkdir /home/pi/usbmount
* mkdir /home/pi/images
* sudo apt-get install fbi (if not already installed)
* sudo apt-get install python-dev python-rpi.gpio
* Add the following lines to the HDMI configuration section of the /boot/config.txt
  * hdmi_group=2
  * hdmi_mode=1
  * hdmi_mode=87
  * hdmi_cvt 800 480 60 6 0 0 0

Todo
----
* Finalize testing to confirm this all works.
