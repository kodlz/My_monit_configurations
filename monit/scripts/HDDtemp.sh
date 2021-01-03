#!/bin/sh
TP=`/usr/sbin/smartctl -a /dev/sda | grep Temp | awk -F " " '{printf "%d",$10}'`
echo $TP 
exit $TP

