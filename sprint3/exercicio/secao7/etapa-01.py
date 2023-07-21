# o ator/atriz com maior número de filmes e a respectiva quantidade.

def ler_csv(arquivo):
    linhas = []

    with open(arquivo, 'r') as arq:
        for linha in arq:
            linha = linha.strip()
            campos = linha.strip(',')
            linhas.append(campos)

        return linhas

caminho = r'/Users/gabrieldosanjos/Desktop/Desafio/actors .csv'
dados = ler_csv(caminho)
substring = [string.split(',') for string in dados]

qtd_f = 0
nm_ator = ''

nm = ''
for c in range(1,51):
    if substring[c][0] == '"Robert Downey':
        nome = substring[c][0] + substring[c][1]
        qtd = int(substring[c][3])
    else:    
        nome = substring[c][0]
        qtd = int(substring[c][2])

    if qtd > qtd_f:
        nm_ator = nome
        qtd_f = qtd

print(f'Nome: {nm_ator} Qtd: {qtd_f}')

txt = r'C:\Desafio_Python\etapa-1.txt'

with open(txt,'w') as resp:
    resp.write(f'Ator: {nm_ator}\n')
    resp.write(f'Quantidade: {qtd_f}\n')