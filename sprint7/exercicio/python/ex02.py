# 2-Apresente a média da coluna contendo o número de filmes.
import pandas as pd

caminho_arquivo = '/Users/gabrieldosanjos/ex01 python/actors (1).csv'
df = pd.read_csv(caminho_arquivo)

media_numero_filmes = df['Number of Movies'].mean()

print(f'A média do número de filmes é {media_numero_filmes:.2f}')
