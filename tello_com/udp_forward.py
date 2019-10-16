import threading 
import socket
import sys
import time

def main():
    if len(sys.argv) != 5:
        print("Usage: %s listen_ip listen_port forward_ip forward_port",sys.argv[0])
        return

host = ''
port = 8890
locaddr = (host,port) 


# Create a UDP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
#sock.bind(locaddr)

def recv():
    while True: 
        try:
            print("waitinf data")
            data, server = sock.recvfrom(1518)
            print(data.decode(encoding="utf-8"))
        except Exception as e:
            print (e)
            

#recvThread create
#recvThread = threading.Thread(target=recv)
#recvThread.start()

if __name__ == "__main__":
    main()

