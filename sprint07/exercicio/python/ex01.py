# 1-Identifique o ator/atriz com maior número de filmes e o respectivo número de filmes.

import pandas as pd

caminho = '/Users/gabrieldosanjos/ex01 python/actors (1).csv'
df = pd.read_csv(caminho)

indice_ator_mais_filmes = df['Number of Movies'].idxmax()
ator_mais_filmes = df.at[indice_ator_mais_filmes, 'Actor']
numero_filmes = df.at[indice_ator_mais_filmes, 'Number of Movies']

print(f'O ator/atriz com o maior número de filmes é {ator_mais_filmes} com {numero_filmes} filmes.')
