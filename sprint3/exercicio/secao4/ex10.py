# Exercício de programação 10: Exercícios Parte 2

def remover_duplicatas(lista):
    return list(set(lista))

original = ['abc', 'abc', 'abc', '123', 'abc', '123', '123']
lista_sem_duplicatas = remover_duplicatas(original)

print(lista_sem_duplicatas)
