#!/bin/sh
#thermometer app is required
TP=`/usr/bin/thermometer | awk '{printf $2}'`
echo $TP
exit $TP
