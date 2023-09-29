#!/bin/bash

service dbus start
bluetoothd &
sleep 1
service avahi-daemon start
#/usr/sbin/otbr-agent -I wpan0 spinel+hdlc+uart:///dev/ttyACM0?uart-baudrate=1000000 &
sleep 1
docker exec -it otbr bash
ot-ctl dataset init new 
ot-ctl dataset commit active 
#ot-ctl panid 0x1234
ot-ctl ifconfig up
ot-ctl thread start
ot-ctl state 
exit 
sleep 2
#./usr/bin/chip-tool-debug interactive start    

/bin/bash
#sleep infinity
