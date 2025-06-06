CREATE DATABASE aula_1505;
USE aula_1505;

CREATE TABLE TB15005_Prod_Cur_ETEC(
	id INT PRIMARY KEY AUTO_INCREMENT, 
    quantidade INT, 
    nome_produtos VARCHAR (255) NOT NULL,
    nome_fornecedor VARCHAR (155) NOT NULL, 
    valor_unit DOUBLE NOT NULL
);
 SELECT * FROM TB15005_Prod_Cur_ETEC;
 
ALTER TABLE TB15005_Prod_Cur_ETEC 
ADD COLUMN isperecivel BOOLEAN,
ADD COlUMN isseraexcluido BOOLEAN;

SELECT * FROM TB15005_Prod_Cur_ETEC;

ALTER TABLE TB15005_Prod_Cur_ETEC 
DROP COLUMN isseraexcluido;

SELECT * FROM TB15005_Prod_Cur_ETEC;

ALTER TABLE TB15005_Prod_Cur_ETEC 
DROP COLUMN isperecivel,
ADD COLUMN codigoBarra VARCHAR (255);

CREATE TABLE TB15005_Forn_Cur_ETEC (
	id_Fornecedor INT AUTO_INCREMENT PRIMARY KEY, 
	razaoSocial VARCHAR (155) NOT NULL, 
    CNPJ INT NOT NULL,
    id_contato INT,
    CEP INT NOT NULL
);

ALTER TABLE TB15005_Prod_Cur_ETEC 
ADD COLUMN id_fornecedor INT;

ALTER TABLE TB15005_Prod_Cur_ETEC 
DROP COLUMN id_fornecedor,
ADD COLUMN id_Fornecedor INT;

ALTER TABLE TB15005_Prod_Cur_ETEC 
ADD FOREIGN KEY  TB15005_Prod_Cur_ETEC(id_Fornecedor) REFERENCES TB15005_Forn_Cur_ETEC CONSTRAINT;
