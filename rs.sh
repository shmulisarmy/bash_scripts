"""shortcut for a user to quicly spin up a django server"""

if [ "$#" -gt 1 ]; then
    python3 manage.py makemigrations
    python3 manage.py migrate  
fi

python3 manage.py runserver & open http://127.0.0.1:8000/$1