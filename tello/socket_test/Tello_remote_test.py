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

tello_ip = '192.168.90.175'
tello_port = 12001

host = ''
port = 13001
locaddr = (host, port)

vid_port = 14001
vid_locaddr = (host, vid_port)

# Create a UDP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
vid_sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

tello_address = (tello_ip, tello_port)

sock.bind(locaddr)

counter = 0

def recv():
    print("receive_state thread start")
    while True:
        try:
            print("waiting state data")
            data, server = sock.recvfrom(3000)
            print("receive state data")
        except Exception as e:
            print('\nExit . . .\n')
            print(e)
            break


def vid_thread():
    global counter
    print("vid thread start")
    while True:
        try:
            print("waitiong video data")
            data, server = vid_sock.recvfrom(2048)
            print("receive video data")
        except Exception as e:
            print('\nExit . . .\n')
            print(e)
            break

        # recvThread create


recvThread = threading.Thread(target=recv)
recvThread.daemon = True
recvThread.start()

sock.sendto(b'command', tello_address)
sock.sendto(b'streamon', tello_address)

vid_sock.bind(vid_locaddr)

recv_vid_Thread = threading.Thread(target=vid_thread)
recv_vid_Thread.daemon = True
recv_vid_Thread.start()


while True:

    try:
        com = input("")
        if 'end' in com:
            sock.close()
            vid_sock.close()
            break

        if 'show' in com:
            print(counter)
            continue

        sock.sendto(com.encode(encoding='utf-8'), tello_address)
    except KeyboardInterrupt:
        sock.close()
        vid_sock.close()
        break


print("End program")
