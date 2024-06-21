#!/bin/bash
if [ "$#" -gt 0 ]; then 
    for i in $(seq 1 "$#"); do
        open "${!i}.html"
    done
else 
    open main.html
fi




