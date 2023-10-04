-- Tabela tb_cliente
CREATE TABLE tb_cliente (
    idCliente INT PRIMARY KEY,
    nomeCliente VARCHAR(100),
    cidadeCliente VARCHAR(40),
    estadoCliente VARCHAR(40),
    paisCliente VARCHAR(40)
);

-- Tabela tb_carro
CREATE TABLE tb_carro (
    idCarro INT PRIMARY KEY,
    kmCarro INT,
    chassiCarro VARCHAR(50),
    marcaCarro VARCHAR(60),
    modeloCarro VARCHAR(60),
    anoCarro INT,
    idCombustivel INT,
    FOREIGN KEY (idCombustivel) REFERENCES tb_combustivel(idCombustivel)
);

-- Tabela tb_combustivel
CREATE TABLE tb_combustivel (
    idCombustivel INT PRIMARY KEY,
    tipoCombustivel VARCHAR(20)
);

-- Tabela tb_vendedor
CREATE TABLE tb_vendedor (
    idVendedor INT PRIMARY KEY,
    nomeVendedor VARCHAR(15),
    sexoVendedor SMALLINT,
    estadoVendedor VARCHAR(40)
);

-- Tabela tb_locacao
CREATE TABLE tb_locacao (
    idLocacao INT PRIMARY KEY,
    idCliente INT,
    idCarro INT,
    dataLocacao DATETIME,
    horaLocacao TIME,
    qtdDiaria INT,
    vrDiaria DECIMAL(18,2),
    dataEntrega DATE,
    horaEntrega TIME,
    idVendedor INT,
    FOREIGN KEY (idCliente) REFERENCES tb_cliente(idCliente),
    FOREIGN KEY (idCarro) REFERENCES tb_carro(idCarro),
    FOREIGN KEY (idVendedor) REFERENCES tb_vendedor(idVendedor)
);
