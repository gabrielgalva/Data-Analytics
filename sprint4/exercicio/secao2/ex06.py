# Exercício de programação 6: E6

def maiores_que_media(conteudo:dict)->list:
    valores = list(conteudo.values())
    media = sum(valores) / len(valores)

    produtos_acima = [(produto, preco) for produto, preco in conteudo.items() if preco > media]
    

    produtos_acima.sort(key=lambda x: x[1])
    
    return produtos_acima
