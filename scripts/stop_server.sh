#!/bin/bash

JARFile="codedeploy-demo-1.0.0.jar"
#PIDFile="codedeploy-demo.pid"

if [ -z "`ps -eaf | grep java | grep $JARFile`" ]; then
        echo "terminated successfully."
else
        ps -eaf | grep java | grep $JARFile | awk '{print $2}' |
        while read PID
                do
                echo "Killing $PID... "
                kill -9 $PID
                echo "being shutdowned"
                done
fi