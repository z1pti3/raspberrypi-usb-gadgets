#!/bin/sh

./unload.sh
modprobe g_multi file=/root/yourNTFSimgfile.img
service getty@ttyGS0 start
