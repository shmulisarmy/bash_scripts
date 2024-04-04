#!/bin/bash
if [ "$#" -gt 0 ]; then 
    for i in $(seq 1 "$#"); do
        # echo "python3 ${!i}.py"
        open "${!i}.html"
    done
else 
    open main.html
fi




