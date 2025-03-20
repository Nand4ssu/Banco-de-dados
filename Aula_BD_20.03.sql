CREATE DATABASE etecuirapuru;
USE etecuirapuru;

CREATE TABLE Alunos(

id INT auto_increment PRIMARY KEY,
/*Está definindo a coluna "id" como um número inteiro que incrementa automaticamente a cada novo registro inserido. Essa coluna também é a chave
primária da tabela, o que significa que cada valor nessa coluna deve ser único e não pode ser nulo.*/ 

nome varchar(255),
curso varchar(250),
salario double,
idade int
);
INSERT INTO Alunos (nome, curso, salario, idade) VALUES
/*Values é usado para indicar os valores que serão inseridos nas colunas especificadas.*/
("Amanda", "Desenvolvimento de Sistemas", 1500, 18);

INSERT INTO Alunos(nome, curso, salario, idade) VALUES
("Jessica", "Desenvolvimento de Sistemas", 1750, 17),
/*A ordem dos elementos segue a ordem que foi colocada no INTO, como por exemplo: nome = Jessica e curo = DS.*/
("Fabio", "Nutrição", 1800, 19);

INSERT INTO Alunos(nome, curso, salario, idade) VALUES
("Roberto", "Gastronomia", 1900, 28),
("Carlos", "Segurança do Trabalho", 2000, 45),
("Nayara", "Administração", 1500, 35);

INSERT INTO Alunos(nome, curso, salario, idade) VALUES
("Tauane", "Nutrição", 1570, 32);

SELECT * FROM Alunos;

SELECT COUNT(*) FROM Alunos WHERE idade > 30;
/*O comando COUNT é utilizado para contar o número de linhas que atendem a uma condição especifica*/

SELECT AVG (idade) FROM Alunos;
/*O comando AVG é utilizado para calcular a média de um conjunto de valores.*/

SELECT AVG (idade) as medidade FROM Alunos ;
/*Está mandando uma mensagem junto com a média.*/

SELECT * FROM Alunos WHERE idade = (SELECT MAX(idade) FROM Alunos);
/*MAX este comando seleciona todos os dados dos alunos que possuem a idade máxima
No comando, ela está filtrando os resultados para incluir apenas aqueles cuja idade é igual à idade máxima encontrada na tabela */

SELECT * FROM Alunos WHERE idade = (SELECT MIN(idade) FROM Alunos);
/*MIN este conando seleciona todos os dados dos alunos que possuem a idade mínima 
No comando, ele está fazendo o mesmo que o MAX*/

SELECT * FROM Alunos WHERE idade BETWEEN 30 AND 33;
/*BETWEEN este comando seleciona todos os dados dos alunos cuja idade está entre 30 e 33 anos.*/
SELECT * FROM Alunos WHERE idade >= 18
