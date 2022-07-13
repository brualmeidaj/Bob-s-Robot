from flask import Flask
from flask import request
import os

app = Flask(__name__)

@app.route("/fide/", methods=["GET", "POST"])
def welcome(): 
    html_string = "n/a"
    path = os.path.dirname(os.path.realpath(__file__)) + "/tests/bobs.robot"
    vars = (f"--variable website_url:{request.json['website_url']}")
    os.system(f"python -m robot {vars} -d ./logs {path}")
    with open("./logs/log.html", "r", encoding="utf8") as f:
        html_string = f.read()
    return html_string


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=105)