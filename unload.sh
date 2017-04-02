#!/bin/bash

if [[ $(service getty@ttyGS0 status | grep running) != "" ]]; then service getty@ttyGS0 stop; fi

if [[ $(lsmod | grep g_serial) != "" ]]; then modprobe -r g_serial; fi

if [[ $(lsmod | grep g_ether) != "" ]]; then modprobe -r g_ether && pkill dnsmasq; fi

if [[ $(lsmod | grep g_mass_storage) != "" ]]; then modprobe -r g_mass_storage; fi

if [[ $(lsmod | grep g_multi) != "" ]]; then modprobe -r g_multi; fi

if [[ $(ls /dev/hidg0) = "/dev/hidg0" ]]; then rm /dev/hidg0 && rm -r /sys/kernel/config/usb_gadget/g1; fi

