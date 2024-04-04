touch main.py
cat <<EOF > main.py
from flask import Flask, render_template

app = Flask(__name__, static_folder='static')

@app.route('/')
def main():
    return render_template("main.html")

if __name__ == '__main__':
    app.run(debug=True, port=8080)
EOF

mkdir templates
cd templates
cat << EOF > main.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>todo</title>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/babel-standalone/6.26.0/babel.min.js"></script>
      <script src="https://unpkg.com/react@17/umd/react.development.js"></script>
      <script src="https://unpkg.com/react-dom@17/umd/react-dom.development.js"></script>
      <script src="{{ url_for('static', filename='main.jsx') }}" type="text/babel" defer></script>
      <link rel="stylesheet" href="{{ url_for('static', filename='main.css') }}">

</head>
<body>
    <div id="root">hello from html page</div>
</body>
</html>
EOF

cd ..
mkdir static
cd static
touch main.jsx
cat << EOF > main.jsx
function App(){
    return (
        <main>
             <h1>Hello world</h1>   
        </main>
    )
}
ReactDOM.render(<App />, document.getElementById('root'));
EOF
cat << EOF > main.css
main{
    display: grid;
    grid-template-columns: 50% 50%;
    margin: 10%;
}

h1{
    background: linear-gradient(90deg, orange, rgb(146, 7, 146),  pink);
    background-clip: text;
    color: transparent;
}
EOF
cd ..
python3 main.py
open localhost://8080

