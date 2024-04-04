#!/bin/bash

if [ $# -gt 0 ] && [ "$0" != 'mfbp' ]; then
    project_name="$1"
else
    project_name="frontend"
fi


mkdir "$project_name"
cd "$project_name" || exit
touch index.html styles.css script.js 
mkdir assets
cd assets
mkdir photos sound
cd ..


cat <<EOL > index.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="styles.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
  <script src="script.js" defer></script>
  <title>"$project_name"</title>
</head>
<body>
</body>
</html>
EOL