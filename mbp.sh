#!/bin/bash

if [ $# -gt 0 ] && [ "$0" != 'mfbp' ]; then
    project_name="$1"
else
    project_name="backendend"
fi

mkdir "$project_name"
cd "$project_name" || exit

mkdir resources
touch main.py db.sqlite

cat <<EOL > api_page.py
from flask import Flask, request
from flask_restful import Api, Resource

app = Flask(__name__)
api = Api(app)

class YourResource(Resource):
    def get(self):
        return {'houses': ['house1', 'house2', 'house3'],
                'apartments': ['apartment1', 'apartment2', 'apartment3'],
                'huts': ['hut1', 'hut2', 'hut3']}

api.add_resource(YourResource, '/')

if __name__ == "__main__":
    app.run(debug=True)
EOL
cat <<EOL > server.py
import socket
import threading

HOST = '127.0.0.1'
PORT = 8080

server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server_socket.bind((HOST, PORT))
server_socket.listen()

print(f"Server listening on {HOST}:{PORT}")

clients = []

def handle_client(client_socket, client_address):
    print(f"Accepted connection from {client_address}")
    clients.append(client_socket)
    
    try:
        while True:
            data = client_socket.recv(1024).decode('utf-8')
            if not data:
                break
            broadcast(client_socket, f"{client_address}: {data}")
    except Exception as e:
        print(f"Error handling client {client_address}: {e}")
    finally:
        clients.remove(client_socket)
        client_socket.close()
        print(f"Connection with {client_address} closed")

def broadcast(sender_socket, message):
    for client_socket in clients:
        if client_socket != sender_socket:
            try:
                client_socket.sendall(message.encode('utf-8'))
            except:
                clients.remove(client_socket)

while True:
    client_socket, client_address = server_socket.accept()
    client_thread = threading.Thread(target=handle_client, args=(client_socket, client_address))
    client_thread.start()

EOL
cat <<EOL > db_commute.py
import sqlite3

conn = sqlite3.connect('db.sql')
cursor = conn.cursor()

cursor.execute('''
    CREATE TABLE IF NOT EXISTS users (
        id INTEGER PRIMARY KEY,
        username TEXT,
        email TEXT
    )
''')

cursor.execute("INSERT INTO users (username, email) VALUES (?, ?)", ('john_doe', 'john@example.com'))
cursor.execute("INSERT INTO users (username, email) VALUES (?, ?)", ('jane_doe', 'jane@example.com'))

conn.commit()

cursor.execute("SELECT * FROM users")
rows = cursor.fetchall()

print("Users:")
for row in rows:
    print(f"ID: {row[0]}, Username: {row[1]}, Email: {row[2]}")

cursor.close()
conn.close()
EOL