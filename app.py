'''
import os

def insecure():
    password = "admin123"   # Hardcoded secret
    os.system("ls " + input("cmd: "))  # Command injection
'''
