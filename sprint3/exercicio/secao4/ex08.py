# Exercício de programação 8: Exercícios Parte 2

palavras = ['maça', 'arara', 'audio', 'radio', 'radar', 'moto']

for palavra in palavras:
    if palavra == palavra[::-1]:
        print("A palavra:", palavra, "é um palíndromo")
    else:
        print("A palavra:", palavra, "não é um palíndromo"
