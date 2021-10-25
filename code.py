"""

    Autor | Parceria : Dreifus-404
    Função do codigo : Consultar IP
    versão           : 0.1

"""

# ----- importações

import os
import time
import requests

# ----- funções

def banner_Main():
    os.system("clear")

    print("\n         '|.   '|'  ..| ''.|  '||' ")
    print("          |'|   |  .|'     '   ||  ")
    print("          | '|. |  ||    ....  ||  ")
    print("          |   |||  '|.    ||   ||  ")
    print("         .|.   '|   ''|...'|  .||. \n")
    print("             \033[1m@ Query tool: IP\033[0m")
    print("          _________________________\n")

    ip = str(input("set the ip : "))
    time.sleep(1.5)

    return ip

def erro_Connection():
    os.system("clear")

    print("\033[30m▄██████████████▄▐█▄▄▄▄█▌")
    print("██████▌▄▌▄▐▐▌███▌▀▀██▀▀")
    print("████▄█▌▄▌▄▐▐▌▀███▄▄█▌")
    print("▄▄▄▄▄██████████████▀\033[0m")
    print("      @ Verify your internet\n")

    oa.system("exit 1")

def consult_IP(ip, erro_Connection):
    banner_Main

    try:
        r = requests.get("http://ip-api.com/json/" + ip)
        data = r.json()

    except:
        erro_Connection()

    print("\033[33m@ searching informations\033[0m...")
    time.sleep(1.5)

    print(f"\nIP            : {data['query']}")
    print(f"Status        : {data['status']}")
    print(f"País          : {data['country']}")
    print(f"Código_País   : {data['countryCode']}")
    print(f"Código_Região : {data['region']}")
    print(f"Nome_Região   : {data['regionName']}")
    print(f"Cidade        : {data['city']}")
    print(f"Zip           : {data['zip']}")
    print(f"Lat           : {data['lat']}")
    print(f"Lon           : {data['lon']}")
    print(f"TimeZone      : {data['timezone']}")
    print(f"Isp           : {data['isp']}")
    print(f"Org           : {data['org']}")
    print(f"As            : {data['as']}\n")


# ----- codigo em execução

ip = banner_Main()
consult_IP(ip, erro_Connection)
