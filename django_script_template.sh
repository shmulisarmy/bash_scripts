#!/bin/bash

"""automate the creation of a readme that goes with a django project"""

dirname=${1-$PWD}               
dirname=${dirname##*/}          
                                 

cat << EOF > readme.md
# $dirname
Quick start script

\`\`\`bash
git clone https://github.com/shmulisarmy/$dirname.git
cd $dirname
pip install -r requirements.txt
python3 manage.py runserver 
\`\`\`

After running the script, open [localhost:8000](http://localhost:8000) in your web browser.
EOF
