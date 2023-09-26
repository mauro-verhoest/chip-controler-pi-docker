#!/bin/bash

service dbus start
sleep 1
service avahi-daemon start
/usr/sbin/otbr-agent -I wpan0 spinel+hdlc+uart:///dev/ttyACM0?uart-baudrate=1000000 &
sleep 1
ot-ctl panid 0x1234
ot-ctl ifconfig up
ot-ctl thread start

sleep infinity
