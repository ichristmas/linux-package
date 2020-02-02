#!/usr/bin/env python3

import os
import re
import sys
import subprocess

def getSubnet():
  if len(sys.argv) < 2:
    return 24
  else:
    return sys.argv[1]

ip = subprocess.check_output('ifconfig wlan0 | grep "inet " | cut -f10 -d " "', shell=True).strip()
ipSp = re.findall('\d+', str(ip))
ip_subnet = ipSp[0]+'.'+ipSp[1]+'.'+ipSp[2]+'.0/' + str(getSubnet())
script = 'nmap -p 445 '+ip_subnet+' --script smb-vuln-ms17-010 --open'

print(ip)
print('scan: ' + ip_subnet)
print('execute: ' + script + '\n')

os.system(script)