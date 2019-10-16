#
# Tello Python3 Control Demo 
#
# http://www.ryzerobotics.com/
#
# 1/1/2018

import threading 
import socket
import sys
import time


host = ''
port = 8890
locaddr = (host,port) 


# Create a UDP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.bind(locaddr)

def recv():
    while True: 
        try:
            print("waitinf data")
            data, server = sock.recvfrom(1518)
            print(data.decode(encoding="utf-8"))
        except Exception as e:
            print (e)
            

#recvThread create
recvThread = threading.Thread(target=recv)
recvThread.start()
