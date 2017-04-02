#!/bin/sh

./unload.sh
modprobe g_ether
dnsmasq -C dnsmasq.conf
