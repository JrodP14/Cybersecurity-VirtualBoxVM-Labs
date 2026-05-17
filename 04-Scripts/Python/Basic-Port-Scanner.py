#!/usr/bin/python

import socket

def port_scanner(host, start_port, end_port): 

	for port in range(start_port, end_port+1): 
		sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		sock.settimeout(1) 
		result =sock.connect_ex((host, port))
		if result == 0:

			print(f"Port {port} is open")

		sock.close()


host = input("Enter Target IP: ")
start_port  = int(input("Enter Start Port: "))
end_port  = int(input("Enter End Port: "))


port_scanner(host, start_port, end_port)

