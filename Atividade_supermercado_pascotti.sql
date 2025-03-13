CREATE DATABASE supermercado_pascotto;
USE supermercado_pascotto;

CREATE TABLE produtos(
codigo_de_barras INT PRIMARY KEY,
nome VARCHAR(255),
marca VARCHAR(255),
data_de_Validade DATE,
fornecedor VARCHAR(255),
quantidade INT,
preco_unitario DECIMAL(10 ,2 )
);
CREATE TABLE fornecedores(
CNPJ INT PRIMARY KEY,
nome_da_empresa VARCHAR(255),
endereco VARCHAR(255),
telefone INT,
email VARCHAR(255)
);
CREATE TABLE funcionarios(
matricula INT PRIMARY KEY,
CPF INT ,
nome VARCHAR(255),
cargo VARCHAR(255),
email VARCHAR(255),
telefone INT, 
salario DECIMAL(10,2)
);


SELECT * FROM produtos;
SELECT * FROM funcionarios;
SELECT * FROM fornecedores;

INSERT INTO produtos ( codigoDeBarras, nome, quantidade) VALUES
(1, 'Açúcar', 120 ),
(2, 'Sal', 80 ),
(3, 'Chocolate em pó', 67);

UPDATE produtos
SET precoUnitario = 7.0
WHERE codigoDeBarras = 1;

INSERT INTO fornecedores (CNPJ, nomeDaEmpresa, telefone, email, endereco) VALUES
(1, 'Assaí', 123455678, 'jusé88@gmail.com', 'Rua da Alegria'),
(2, 'Extra', 57789089, 'Antonita90@gmail.com', 'Rua do desespero');

INSERT INTO funcionarios (matricula, nome, CPF, cargo, email, telefone) VALUES
(1, 'Maurici', 57898709, 'Caixa', 'Maumau@gmail.com', 1678989),
(2, 'Nela', 789989, 'Empacotador', 'Nelinha@gmail.com', 7890099);

