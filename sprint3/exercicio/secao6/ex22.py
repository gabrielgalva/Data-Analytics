# Exercício de programação 22: Exercícios Parte 1

class Pessoa:
    def __init__(self, identificador):
        self.id = identificador
        self.__nome = ""

    def nome(self):
        return self.__nome

    def nome(self, valor):
        self.__nome = valor

pessoa = Pessoa(0)
pessoa.nome = 'Fulano De Tal'
print(pessoa.nome)
