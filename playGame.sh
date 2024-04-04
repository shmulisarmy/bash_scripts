#!/bin/bash

# Colors for shell scripts
# This is for use in Linux and OS X

# Red
RED='\033[0;31m'
# Green
GREEN='\033[0;32m'
# Yellow
YELLOW='\033[0;33m'
# Blue
BLUE='\033[0;34m'
# Purple
PURPLE='\033[0;35m'
# Cyan
CYAN='\033[0;36m'
# No Color
NC='\033[0m'

colors=($RED $GREEN $YELLOW $BLUE $PURPLE $CYAN)
games=("doodle_jump" "tetris" "othello")

clear

for ((i = 0; i < ${#games[@]}; i++)); do
    color=${colors[$(($i%${#colors[@]}))]}
    printf "${color}$((i + 1))${NC} to play ${color}${games[i]}${NC}\n"
done

read -p "Enter your choice: " input

cd "/users/shmuli/repositories/${games[$input - 1]}"

python3 main.py

exit 0

