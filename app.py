from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello from the AWS DevSecOps Pipeline! Python/Flask Version 1.0\n"

if __name__ == '__main__':
    # Running on port 80 requires root privileges, which CodeDeploy will handle
    app.run(host='0.0.0.0', port=80)

