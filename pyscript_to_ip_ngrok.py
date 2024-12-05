import time
import requests

while 1:
    try:
        res = requests.get('http://127.0.0.1:4040/api/tunnels/')
        url = res.json()['tunnels'][0]['public_url']
        break
    except:
        print(".", end="")
        time.sleep(1)
        continue
print("\n"+url)
ip = url.split(':')[1]
ip = ip.split('/')[-1]
port = url.split(':')[-1]
with open('/home/argha/update_ip/README.md', 'w') as file:
    file.write('\n - IP: '+str(ip))
    file.write('\n - Port: '+str(port))
