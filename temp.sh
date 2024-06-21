#!/bin/bash

# List of files
files=("createAndEdit.sh" "p.sh" "djangoCreate.sh" "playGame.sh" "django_script_template.sh" "pyGame.sh" "fastPush.sh" "quickOpener.sh" "gitClone.sh" "runDjango.sh" "info.sh" "saveDirectory.sh" "main.py" "shortcuts.sh" "makeApp.sh" "makeFlaskProject.sh" "youtubeSearch.sh")

# Iterate over each file and set permissions
for file in "${files[@]}"
do
    chmod +x "${file}"
done