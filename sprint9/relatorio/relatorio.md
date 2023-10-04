<h1>- Sprint 9:</h1>

<h2>• Tarefa 1: Modelagem Relacional - Normalização</h2>
Na Tarefa 1: Modelagem Relacional - Normalização:Primeiro, identifiquei as dependências funcionais entre os atributos. Em seguida, apliquei as formas normais:

- Garanti que todas as tabelas continham apenas valores simples e indivisíveis (1NF).
- Assegurei que todos os atributos não chave dependessem completamente da chave primária (2NF).
- Eliminei dependências transitivas entre atributos não chave (3NF).

Como resultado, reorganizei a base de dados em quatro tabelas normalizadas: tb_cliente, tb_carro, tb_combustivel e tb_vendedor,tb_locacao.

• Tabela tb_cliente:
Contém informações sobre os clientes da concessionária.

• Tabela tb_carro:
Armazena detalhes relacionados aos carros disponíveis.

• Tabela tb_combustivel:
Mantém informações sobre os tipos de combustível disponíveis.

• Tabela tb_vendedor:
Registra os dados dos vendedores da concessionária.

• Tabela tb_locacao:
Armazena informações sobre as locações de veículos, incluindo detalhes como data, hora, quantidade diária e valores.
