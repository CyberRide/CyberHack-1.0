#!/usr/bin/python

import socket

def returnBanner(ip, port):
    try:
        socket.setdefaulttimeout(2)
        s = socket.socket()
        s.connect((ip,port))
        banner = s.recv(1024)
        return banner
    except:
        return

def main():
    ip = input("[*] Enter Target IP to Scan: ")
    for port in range(1,100):
        banner = returnBanner(ip, port)
        if banner:
            print ("[*]" + ip + ":" + str(port) + " - " + banner.strip('\n'))
main()


