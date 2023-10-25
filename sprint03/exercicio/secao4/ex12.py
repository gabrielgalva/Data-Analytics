# Exercício de programação 12: Exercícios Parte 2

import json

with open('person.json') as arquivo:
    arquivo = json.load(arquivo)

print(arquivo)
