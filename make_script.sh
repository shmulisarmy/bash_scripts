#!/bin/bash

# Check if a filename was provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Assign the first command-line argument to the variable filename
filename="$1.sh"

cd /usr/local/bin/bash_scripts/ 

# Create a new file with the specified filename
touch "$filename"
cat << EOF > $filename
#!/bin/bash
EOF

# Open the file in Visual Studio Code
open -a 'Visual Studio Code' "$filename"

# Make the file executable
chmod +x "$filename"

echo "Script '$filename' has been created, opened in Visual Studio Code, and made executable."
