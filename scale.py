
from flask import Flask, request
import subprocess

app = Flask(__name__)

@app.route("/scale", methods=["POST"])
def scale():
    data = request.json
    if data["status"] == "firing":
        subprocess.run(["gcloud", "compute", "instance-groups", "managed", "resize", 
                        "auto-scale-group", "--size=3", "--zone=us-central1-a"])
    return "Scaling Triggered", 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
  