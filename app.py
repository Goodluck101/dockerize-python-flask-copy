from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    html = f"<h1>Hello World!</h1> This is Version: 1.0.1"
    return html

if __name__ == '__main__':
	app.run(host="0.0.0.0", port=5000)
