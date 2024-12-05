#!/bin/bash

screen -S ngrok_screen -l -Logfile /home/argha/output.log -dm /snap/bin/ngrok tcp 22
echo "screen started"
/usr/bin/python3 /home/argha/update_ip/pyscript_to_ip_ngrok.py
echo "updated readme"
cd /home/argha/update_ip && git add . && git commit -m "update ip"
cd /home/argha/update_ip && git push origin main

# Name of the screen session to monitor
#SCREEN_NAME="ngrok_screen"

#echo "Waiting for screen session '$SCREEN_NAME' to close..."

# Loop until the screen session is no longer running
#while screen -list | grep -q "$SCREEN_NAME"; do
#  sleep 30  # Wait for 1 second before checking again
#done

#echo "Screen session '$SCREEN_NAME' is closed."
