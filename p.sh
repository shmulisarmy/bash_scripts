#!/bin/bash
if [ "$#" -gt 0 ]; then 
    for i in $(seq 1 "$#"); do
        # echo "python3 ${!i}.py"
        python3 "${!i}.py" $1 $2
    done
else 
    python3 main.py $1 $2
fi
