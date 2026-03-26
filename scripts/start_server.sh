#!/bin/bash
cd /home/ec2-user/app

python3 -m pip install -r requirements.txt

# Stop any currently running server
pkill gunicorn || true

# Ensure the system paths include where pip installs programs
export PATH=$PATH:/usr/local/bin:/home/ec2-user/.local/bin

# Start the Flask app using gunicorn in the background
nohup gunicorn -w 4 -b 0.0.0.0:80 app:app > /dev/null 2>&1 &