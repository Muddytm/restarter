#!/bin/bash

pid="pid.pid"

if ! ps -p "$(<"$pid")" > /dev/null; then
    process="app_to_run.txt"
    python "$(<"$process")" &
    echo $! > pid.pid
fi

