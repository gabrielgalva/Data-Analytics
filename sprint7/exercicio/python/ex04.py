# 4-Apresente o nome do(s) filme(s) mais frequente(s) e sua respectiva frequência.

import pandas as pd

# Caminho do arquivo
arquivo = "/Users/gabrieldosanjos/ex01 python/actors (1).csv"

# Leitura do arquivo
df = pd.read_csv(arquivo)

# Renomeando as colunas
df.rename(columns={
    'Number of Movies': 'numero_de_filmes',
    'numero_1_filme': '#1 Movie'
}, inplace=True)

# Frequência de cada filme
frequencia_filmes = df['#1 Movie'].value_counts()

# Filme mais frequente
filme_mais_frequente = frequencia_filmes.sort_values(ascending=False).index[0]

# Frequência do filme mais frequente
frequencia_filme_mais_frequente = frequencia_filmes[filme_mais_frequente]

# Resposta
print("O filme mais frequente é", filme_mais_frequente, "com", frequencia_filme_mais_frequente, "aparições.")



import pandas as pd

caminho_arquivo = "/Users/gabrieldosanjos/ex01 python/actors (1).csv"

dados = pd.read_csv(caminho_arquivo)

count_valor = dados['#1 Movie'].value_counts()

for i, (filme, qtd) in enumerate(count_valor.items(), start=1):
    print(f'{i}- O filme {filme} aparece {qtd} vez(es) no dataset')



