#!/bin/bash

if [ "$1" = "start" ] ; then
        echo "-------------------------------------------------------------------"
        echo "   Start HaemaTour Server"
        echo "-------------------------------------------------------------------"
  # back ground
  nohup java -jar haematour-0.0.1-SNAPSHOT.jar 1 > haematour.err 2 > haematour.log &

elif [ "$1" = "stop" ] ; then
        echo "-------------------------------------------------------------------"
        echo "   STOP HaemaTour Server"
        echo "-------------------------------------------------------------------"
        pid=`ps -ef | grep 'haematour-0.0.1-SNAPSHOT' | grep -v 'grep' | awk '{print $2}'`

  kill -9 $pid

else
        echo "Usage: ./haematour.sh ( start| stop )"
        exit 1
fi
