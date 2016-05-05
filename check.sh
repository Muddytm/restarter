#!/bin/bash

if [ ! -f pid.pid ]; then
    process="app_to_run.txt"
    python $(<"$process") &
    pid=$!
    new_pid=${pid}
    echo $(<"$new_pid") > pid.pid
fi        

pid="pid.pid"



