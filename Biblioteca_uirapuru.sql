/*DDL-Comando de Definição de Estrutura*/

CREATE DATABASE biblioteca_uirapuru;

/*Diz ao SGBDR que vamos usar este banco de dados daqui pra frente*/
USE biblioteca_uirapuru;

/*1 Comando: CREATE*/
CREATE TABLE livros(
 id INT PRIMARY KEY,
 título VARCHAR(255),
 autor VARCHAR(255),
 preco DECIMAL (10, 2),
 editora VARCHAR(255),
 genero VARCHAR(255),
 ano_publicacao INT 
);

SELECT * FROM livros;

/*Removendo uma coluna da tabela*/

ALTER TABLE livros DROP genero; 
ALTER TABLE livros DROP editora;

/*Comando para adicionar uma coluna em uma tabela*/
ALTER TABLE livros ADD CNPJ INT;

/*Alterar o Tipo de Dado de uma coluna, exemplo:em 2025, o campo de CNPJ passará a ser alfanumerico 
então ele não pode ser INT, vamos alterar.*/
ALTER TABLE livros MODIFY CNPJ VARCHAR(25);
DESC livros;

/*Alterar a coluna, para impedir que ela seja nula, ou seja, ela vai precisar
ter registros, senão dará erro.*/
ALTER TABLE livros MODIFY título VARCHAR(255) NOT NULL;
ALTER TABLE livros MODIFY autor VARCHAR(255) NOT NULL;

DESC livros;

ALTER TABLE livros DROP CNPJ;

/*Inserir múltiplos registros*/
INSERT INTO livros (id, título, autor) VALUES
(1, 'Quebrando a cabeça com Java', 'Josefino'),
(2, 'Java 8', 'Peter Jandl'),
(3, 'Google Android', 'Richard Lecheta');

SELECT * FROM livros;

UPDATE livros 
SET preco = 99.99
WHERE id = 1;

/*Remover todos os registros da tabela*/
TRUNCATE TABLE livros;

DROP TABLE livros;
