#!/bin/bash

screen -S ngrok_screen -l -Logfile /home/argha/output.log -dm /snap/bin/ngrok tcp 22
/usr/bin/python3 /home/argha/update_ip/pyscript_to_ip_ngrok.py
cd /home/argha/update_ip && git add . && git commit -m "update ip"
cd /home/argha/update_ip && git push origin main
wait
