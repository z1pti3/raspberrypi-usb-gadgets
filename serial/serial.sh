#!/bin/sh

./unload.sh
modprobe g_serial
service getty@ttyGS0 start
