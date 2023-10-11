<h1>- Sprint 9:</h1>

<h2>• Tarefa 1: Modelagem Relacional - Normalização</h2>
Na Tarefa 1: Modelagem Relacional - Normalização:Primeiro, identifiquei as dependências funcionais entre os atributos.

<h2>Criação de Tabelas:</h2>

- No início do exercício, criei várias tabelas no banco de dados, cada uma com um nome específico, como "Cliente", "Carro", "Combustivel", "Vendedor" e "Locacao". Cada tabela foi projetada para armazenar informações relacionadas a um aspecto específico dos registros de locação.

<h2>Importação de Dados:</h2>

- Após a criação das tabelas, executei uma etapa crucial de importação de dados. Nesta etapa, os dados foram selecionados a partir da tabela "tb_locacao" com base nas colunas correspondentes e inseridos nas tabelas recém-criadas.

- A tabela "Cliente" foi preenchida com informações sobre os clientes, a tabela "Carro" continha dados sobre os carros disponíveis, a tabela "Combustivel" armazenou informações sobre o tipo de combustível utilizado, a tabela "Vendedor" registrou detalhes sobre os vendedores envolvidos, e a tabela "Locacao" continha registros detalhados sobre cada locação.

<h2>Tarefa 2: Modelagem Dimensional - Criação de Modelo</h2>

Primeiro, criei tabelas de dimensão para armazenar informações essenciais. A tabela DimCliente contém detalhes sobre os clientes, como seus IDs, nomes, cidades, estados e países. A tabela DimCarro guarda informações sobre os carros, incluindo seus IDs, quilometragem, classificação, marca, modelo, ano e o tipo de combustível que utilizam. Por fim, a tabela DimVendedor armazena dados sobre os vendedores, como seus IDs, nomes, sexo e estados.

Para popular essas tabelas de dimensão, utilizei o comando INSERT INTO para copiar os dados das tabelas originais (Cliente, Carro, Vendedor) para as tabelas de dimensão correspondentes. Isso me permitiu criar dimensões bem estruturadas a partir dos dados brutos.

Em seguida, criei a tabela de fatos chamada FatoLocacao. Esta tabela é o coração do nosso modelo de dados, registrando informações cruciais sobre as locações de carros, incluindo o ID da locação, os IDs do cliente, carro e vendedor envolvidos, datas e horários de locação, quantidade diária, valor diário e datas/horas de entrega. Além disso, estabeleci chaves estrangeiras para as tabelas de dimensão DimCliente, DimCarro e DimVendedor, garantindo uma conexão sólida entre os fatos e as dimensões.

Por fim, criei visualizações para facilitar o acesso aos dados. A visualização VwFatoLocacao combina informações da tabela FatoLocacao com detalhes das tabelas de dimensão DimCliente, DimCarro e DimVendedor. Isso permite uma consulta mais eficiente e compreensão de todas as informações relevantes em um só lugar. As visualizações VwDimCliente, VwDimCarroeVwDimVendedor` simplesmente fornecem representações diretas das tabelas de dimensão originais, tornando a consulta dos dados das dimensões uma tarefa mais simples.

