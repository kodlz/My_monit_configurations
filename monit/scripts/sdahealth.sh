#!/bin/sh
STATUS=`/usr/sbin/smartctl -H /dev/sda | grep overall-health | awk 'match($0,"result:"){print substr($0,RSTART+8,6)}'`
#echo $STATUS
if [ "$STATUS" = "PASSED" ]
then
    # 0 implies PASSED
    TP=0
else
    # 1 implies FAILED
    TP=1
fi
echo $TP 
exit $TP
