#/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color


"""works for any site that ends in .com"""

colors=($RED $GREEN $YELLOW $Blue $PURPLE $CYAN)
websites=("monkeytype" "drive.google" "calendar.google" "chat.openai" "github" "google" "whatsapp")

clear

for ((i = 0; i < ${#websites[@]}; i++)); do
    color=${colors[$(($i%${#colors[@]}))]}
    echo "${color}$((i + 1))${NC} to open ${color}${websites[i]}${NC} in browser"
done


read -p "Enter your choice: " input


open "http://${websites[$input - 1]}.com"

echo -- 


exit 0
