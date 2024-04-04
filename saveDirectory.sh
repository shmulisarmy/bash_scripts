#!/bin/bash

file_path="/users/shmuli/directory.txt"

current_directory=$(pwd)

echo "$current_directory" > "$file_path"


echo "Current directory written to $file_path"
