import os
from dotenv import load_dotenv

load_dotenv()

def welcome(name):
    return "Oi " + name + ", vou fazer um teste CAVALO"
    
result = welcome("garotos de programa")
print (result)
