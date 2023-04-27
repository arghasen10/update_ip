import requests
res = requests.get('http://127.0.0.1:4040/api/tunnels/')
url = res.json()['tunnels'][0]['public_url']
print(url)
ip = url.split(':')[1]
port = url.split(':')[-1]
with open('README.md', 'w') as file:
    file.write('\n - IP: '+str(ip))
    file.write('\n - Port: '+str(port))
