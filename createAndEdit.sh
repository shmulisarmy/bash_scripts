if [ "$1" = 'f' ]; then
mkdir "$2"
open -a 'Visual Studio code - insiders' "$2"
else
touch "$1"
open -a 'Visual Studio code - insiders' "$1"
fi