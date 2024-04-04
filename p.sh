#!/bin/bash
if [ "$#" -gt 0 ]; then 
    for i in $(seq 1 "$#"); do
        # echo "python3 ${!i}.py"
        python3 "${!i}.py"
    done
else 
    python3 main.py
fi
