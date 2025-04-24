CREATE DATABASE pwII_atividade;
USE pwII_atividade;

CREATE TABLE usuario(
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (255) NOT NULL,
    dataNascimento DATE,
    CPF VARCHAR (255),
    CNPJ VARCHAR (255),
    razaoSocial VARCHAR (255),
    email VARCHAR (255) NOT NULL,
    senha INT NOT NULL
);
CREATE TABLE login(
	id_Login INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR (255) NOT NULL, 
    hash_senha INT NOT NULL,
    idUsuario INT,
    FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)
);

SELECT * FROM usuario;

INSERT INTO usuario(nome, dataNascimento, CPF, CNPJ, razaoSocial, email, senha) VALUES 
("Amanda Silva", "2007-07-02", "568798799", "78887878", "ProtectIA agency", "amanda.silva@gmail.com", 127546),
("Kelwin Lima", "2006-03-04", "4567890", "3456789", "Petsave", "kelwinLima@gmail.com", 456789);

ALTER TABLE login 
ADD CONSTRAINT fk_login_usuario
FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario);
	