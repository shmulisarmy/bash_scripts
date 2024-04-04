"""give the user an option to copy a shortcut into thier clipboard"""


shortCuts=("/usr/local/bin/bash_scripts" "/users/shmuli" "/users/shmuli/repositories")

clear

for ((i = 0; i < ${#shortCuts[@]}; i++)); do
    echo "entering ${i} -> will place cd ${shortCuts[i]} into your clipboard"
done

read input

index=$((input))

pbcopy <<< "cd ${shortCuts[$index]}"


