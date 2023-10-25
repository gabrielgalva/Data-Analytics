import boto3
import os

# Credenciais
aws_access_key = 'AKIA232JMIPHB2QENEMP'
aws_secret_key = '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'
region_name = 'us-east-1' 
s3_bucket_name = 'docknep'

s3_client = boto3.client(
    's3',
    aws_access_key_id='AKIA232JMIPHB2QENEMP',
    aws_secret_access_key='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',
    region_name= 'us-east-1'
)

# Lista de arquivos CSV a serem carregados
arquivos_para_subir = [
    {'nome': 'movies.csv', 'diretorio': 'Movies'},
    {'nome': 'series.csv', 'diretorio': 'Series'}
]

caminho_data = '2023/09/15'

for arquivos in arquivos_para_subir:
    nome_do_arquivo = arquivos['nome']
    nome_pasta = arquivos['diretorio']
    s3_key = f'Raw/Local/CSV/{nome_pasta}/{caminho_data}/{nome_do_arquivo}'
    local_file_path = nome_do_arquivo 

    # CSV --> S3
    try:
        s3_client.upload_file(local_file_path, s3_bucket_name, s3_key)
        print(f'Arquivo {nome_do_arquivo} carregado com sucesso para o S3.')
    except Exception as e:
        print(f'Erro ao carregar {nome_do_arquivo} para o S3: {str(e)}')

