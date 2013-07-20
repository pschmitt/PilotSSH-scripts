#!/bin/bash

if [[ "$HOST" != "alarmpi" ]]; then 
    ssh pschmitt@alarmpi sudo /home/pschmitt/bin/lamps on
else
    sudo /home/pschmitt/bin/lamps on
fi

if [ "$#" -ne 0 ]
then
    echo '{ "version": 1, "title": "Lamps", "type":"status", "status":"error", "message":"Failed" }';
else
    echo '{ "version": 1, "title": "Lamps", "type":"status", "status":"ok", "message":"Success !", "command":"" };'
fi
