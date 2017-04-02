# raspberrypi-usb-gadgets
Code for turning the pi into USB devices e.g. serial, storage, keyboard, ethernet

This was mainly created for myown reference, but others may find the code usefull.

Usage:
Add "dtoverlay=dwc2" to /boot/config.txt

add "modules-load=dwc2" to /boot/cmdline.txt

Run any of the script to switch to that mode.
