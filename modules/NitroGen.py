import random, string
from colorama import Fore
print('''
███╗░░██╗██╗████████╗██████╗░░█████╗░░██████╗░███████╗███╗░░██╗
████╗░██║██║╚══██╔══╝██╔══██╗██╔══██╗██╔════╝░██╔════╝████╗░██║
██╔██╗██║██║░░░██║░░░██████╔╝██║░░██║██║░░██╗░█████╗░░██╔██╗██║
██║╚████║██║░░░██║░░░██╔══██╗██║░░██║██║░░╚██╗██╔══╝░░██║╚████║
██║░╚███║██║░░░██║░░░██║░░██║╚█████╔╝╚██████╔╝███████╗██║░╚███║
╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░╚═╝░╚════╝░░╚═════╝░╚══════╝╚═╝░░╚══╝

Made by: CyberRide
github: https://github.com/CyberRide
''')
amount = int(input(f'[{Fore.RED}>{Fore.RESET}]{Fore.YELLOW} amount of codes  :'))
value = 1
while value <= amount:
    code = "https://discord.gift/" + ('').join(random.choices(string.ascii_letters + string.digits, k=16))
    f = open('codes.txt', "a+")
    f.write(f'{code}\n')
    f.close()
    print(f'{Fore.BLUE}{code}{Fore.YELLOW} | {Fore.GREEN}Generated')
    print(f'Done, Check The Codes.txt Folder !!!')
    value += 1
    