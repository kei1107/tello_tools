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
vid_port = 8890
vid_locaddr = (host, vid_port)


vid_sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

vid_sock.bind(vid_locaddr)

while True:
    try:
        print("waitiong video data")
        data, server = vid_sock.recvfrom(2048)
        print("receive video data")
    except Exception:
        print('\nExit . . .\n')
        break
