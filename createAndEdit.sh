if [ "$1" = 'f' ]; then
mkdir "$2"
open -a 'Visual Studio Code' "$2"
else
touch "$1"
open -a 'Visual Studio Code' "$1"
fi