<h1>- Sprint 8:</h1>
- Durante a oitava sprint, dediquei-me ao curso de Tutoriais Técnicos - Analytics.Essa sprint foi caracterizada por uma variedade de atividades em vez de cursos extensivos. Durante esse período, participei de algumas atividades relacionadas ao Spark, configurei uma conta no TMDB ,avancei na segunda parte do desafio e também concluí um exercício de geração de dados em massa. Dos dias 18/09 até o dia 02/10, abaixo relatei o que explorei durante esses cursos. 

<h2>• Tutoriais Técnicos - Analytics</h2>
Durante o curso, tive explorei diversas áreas do analytics, foi dividido em várias seções, cada uma com seu foco específico:

- Transforme e catalogue dados com o AWS Glue Parte 1: 
Na primeira parte do curso, relembrei como usar o AWS Glue para transformar e catalogar dados. O AWS Glue é uma ferramenta poderosa para a preparação de dados, facilitando a organização e a limpeza de informações brutas.

- Transforme e catalogue dados com o AWS Glue Parte 2: 
A segunda parte do curso aprofundou os conceitos e práticas introduzidos na primeira parte. Continuei a explorar como o AWS Glue que pode ser usado para processar e organizar dados, preparando-os para análises posteriores.

- Consulte dados com o AWS Athena: 
Nesta seção, relembrei em como consultar dados usando o AWS Athena. Essa parte do curso me ensinou como realizar consultas interativas em grandes conjuntos de dados armazenados no Amazon S3, proporcionando insights valiosos.

- Visualize dados com o Amazon Quicksight: 
A última parte do curso abordou a visualização de dados usando o Amazon Quicksight. Aprendi a criar painéis interativos e gráficos que permitem a comunicação eficaz de insights obtidos a partir dos dados processados com o AWS Glue e consultados com o AWS Athena.


<h2>• Exercício TMDB</h2>
No exercício 1, comecei criando minha conta no TMDB com o propósito de gerar minha chave de acesso. Em seguida, executei o código fornecido para avançar na atividade.


<h2>• Desafio 2</h2>
Na segunda parte do desafio, minha abordagem inicial envolveu uma fase de planejamento, na qual dediquei vários dias ao estudo de APIs e à pesquisa de como extrair informações sobre filmes por meio do Lambda. Após essa etapa de preparação, comecei a desenvolver códigos no ambiente do VS Code para testar como os dados eram obtidos.

Com o progresso dos testes, percebi a necessidade de criar camadas com bibliotecas específicas para que o Lambda funcionasse corretamente. Após essa configuração, consegui com sucesso extrair os dados e armazená-los em um bucket. Optei por coletar filmes do genêro terror de 2000 a 2023, pois estes serão relevantes para o meu projeto final, que se concentra nos melhores filmes de terror desses anos.

<h2>• Desenvolvimento de Código e Criação de Conjunto de Dados</h2>
Durante esta atividade, segui os seguintes passos:

Gerando uma Lista de Inteiros Aleatórios:
- Criei uma lista com 250 inteiros aleatórios e inverti sua ordem usando a função reverse.

Gerando uma Lista de Nomes de Animais: 
- Compilei uma lista com 20 nomes de animais, os ordenei alfabeticamente e armazenei-os em um arquivo CSV chamado "nomes_animais.csv".

Gerando um Conjunto de Dados de Nomes de Pessoas Aleatórios: 
- Segui os passos fornecidos no tutorial para criar um conjunto de dados de nomes de pessoas aleatórios, que incluiu a instalação da biblioteca "names". Armazenei esses nomes em um arquivo de texto chamado "nomes_aleatorios.txt" e verifiquei seu conteúdo usando um editor de texto.

Com essas tarefas concluídas, adicionei os artefatos de código ao meu repositório no GitHub, conforme solicitado.

<h2>• Apache Spark</h2>

- Passo 1: Preparando o Ambiente
Primeiramente, preparei o ambiente definindo o diretório onde o código seria desenvolvido e copiando o arquivo "nomes_aleatorios.txt" para esse diretório. Certifiquei-me de ter acesso ao arquivo.

- Passo 2: Importando Bibliotecas e Iniciando a Spark Session
Em seguida, importei as bibliotecas necessárias do Spark, incluindo SparkSession e SparkContext. Iniciei a Spark Session e defini um contexto SQL para habilitar o processamento de comandos SQL.

- Passo 3: Lendo o Arquivo CSV e Mostrando Algumas Linhas
Li o arquivo "nomes_aleatorios.txt" usando o comando spark.read.csv e carreguei-o em um DataFrame chamado "df_nomes". Para entender os dados, exibi algumas linhas do DataFrame usando o método show. Isso me ajudou a ter uma visão inicial dos dados.

- Passo 4: Renomeando Colunas e Imprimindo o Schema
Como o Spark não identificou automaticamente o esquema, renomeei a coluna para "Nomes" usando o método withColumnRenamed. Em seguida, imprimi o schema do DataFrame para entender a estrutura dos dados.

- Passo 5: Adicionando Coluna "Escolaridade" Aleatoriamente
Adicionei uma nova coluna chamada "Escolaridade" ao DataFrame "df_nomes" com valores aleatórios, como "Fundamental", "Médio" ou "Superior". Certifiquei-me de evitar o uso de iterações e usei métodos do Spark para realizar essa tarefa.

- Passo 6: Adicionando Coluna "Pais" Aleatoriamente
Da mesma forma, adicionei uma nova coluna chamada "Pais" ao DataFrame "df_nomes" com nomes de países da América do Sul, escolhidos aleatoriamente.

- Passo 7: Adicionando Coluna "AnoNascimento" Aleatoriamente
Adicionei uma nova coluna chamada "AnoNascimento" ao DataFrame "df_nomes" com valores de ano entre 1945 e 2010, escolhidos aleatoriamente.

- Passo 8: Selecionando Pessoas Nascidas neste Século
Usei o método select do DataFrame "df_nomes" para selecionar as pessoas que nasceram neste século. Armazenei o resultado em um novo DataFrame chamado "df_select" e exibi 10 nomes deste novo DataFrame.

- Passo 9: Usando Spark SQL para Selecionar Pessoas Nascidas neste Século
Para realizar a mesma seleção usando Spark SQL, registrei o DataFrame "df_nomes" como uma tabela temporária, como "pessoas". Em seguida, usei o Spark SQL para selecionar pessoas nascidas neste século e exibi os resultados.

- Passos 10 e 11: Contando Pessoas por Geração e País
Usando o Spark SQL, obtive a quantidade de pessoas de cada país para diferentes gerações, incluindo Baby Boomers, Geração X, Millennials e Geração Z. Armazenei o resultado em um novo DataFrame e, em seguida, exibi todas as linhas em ordem crescente de país, geração e quantidade.



