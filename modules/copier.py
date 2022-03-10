#!/usr/bin/python3
#Author: CyberRide

import pywebcopy
import os
from pywebcopy import save_website

header = """
░██╗░░░░░░░██╗███████╗██████╗░░██████╗██╗████████╗███████╗  ░█████╗░░█████╗░██████╗░██╗███████╗██████╗░
░██║░░██╗░░██║██╔════╝██╔══██╗██╔════╝██║╚══██╔══╝██╔════╝  ██╔══██╗██╔══██╗██╔══██╗██║██╔════╝██╔══██╗
░╚██╗████╗██╔╝█████╗░░██████╦╝╚█████╗░██║░░░██║░░░█████╗░░  ██║░░╚═╝██║░░██║██████╔╝██║█████╗░░██████╔╝
░░████╔═████║░██╔══╝░░██╔══██╗░╚═══██╗██║░░░██║░░░██╔══╝░░  ██║░░██╗██║░░██║██╔═══╝░██║██╔══╝░░██╔══██╗
░░╚██╔╝░╚██╔╝░███████╗██████╦╝██████╔╝██║░░░██║░░░███████╗  ╚█████╔╝╚█████╔╝██║░░░░░██║███████╗██║░░██║
░░░╚═╝░░░╚═╝░░╚══════╝╚═════╝░╚═════╝░╚═╝░░░╚═╝░░░╚══════╝  ░╚════╝░░╚════╝░╚═╝░░░░░╚═╝╚══════╝╚═╝░░╚═╝

Made by: CyberRide
github: https://github.com/CyberRide
"""
print(header)
projname = input("Enter Project Name: ")
urls  = input("Enter website url E.G https://github.com/CyberRide: ")
path = input("Enter ../../Desktop: ")

kwargs = {'project_name': projname} 

save_website(
    url=urls,
    project_folder=path,
    **kwargs
)
