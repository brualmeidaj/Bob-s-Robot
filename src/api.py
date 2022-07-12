from flask import Flask
import os

app = Flask(__name__)

@app.route("/run/", methods=["GET", "POST"])
def welcome(): 
    path = os.path.dirname(os.path.realpath(__file__)) + "/tests/bobs.robot"
    os.system(f"python -m robot -d ./logs {path}")
    with open("./logs/log.html", "r", encoding="utf8") as f:
        html_string = f.read()
    return html_string


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=105)