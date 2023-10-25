import boto3
import requests
import json
from datetime import datetime

def lambda_handler(event, context):
 
    aws_access_key = ' - '
    aws_secret_key = ' - '
    region_name = 'us-east-1'
    nome_bucket = 'newbuckpl'
    decada_inicio = '2020-01-01'
    decada_fim = '2023-01-01'

    s3 = boto3.client(
        's3',
        aws_access_key_id=aws_access_key,
        aws_secret_access_key=aws_secret_key,
        region_name=region_name
    )
    
    api_key = " - "
    base_url = "https://api.themoviedb.org/3/discover/movie"
    data_processamento = datetime.now().strftime('%Y/%m/%d')
    language = "pt-BR"
    
    total_pages = 400
    
    resposta = []
    
    for page in range(1, total_pages + 1):
        url = f"{base_url}?api_key={api_key}&language={language}&page={page}&sort_by=primaryrelease_date.asc&with_genres=27&primary_release_date.gte={decada_inicio}&primary_release_date.lte={decada_fim}"
        response = requests.get(url)
        data = response.json()
        resposta.extend(data.get('results', []))
        
    file_name = f'movies_decade_2020_2023.json'
    
    s3.put_object(
        Bucket=nome_bucket,
        Key=f'Raw/TMDB/JSON/{data_processamento}/{file_name}',
        Body=json.dumps(resposta, ensure_ascii=False, indent=4),
        ContentType='application/json'
    )
