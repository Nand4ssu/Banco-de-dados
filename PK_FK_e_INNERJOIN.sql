CREATE DATABASE aula_PKeFK;
USE aula_PKeFK;

CREATE TABLE cursos(
	id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL, 
    descricao VARCHAR(255)
);
CREATE TABLE alunos(
	id_aluno  INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL, 
    idade INT NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL, 
    data_nascimento DATE NOT NULL, 
    id_curso INT, 
    telefone VARCHAR(20),
    CONSTRAINT fk_aluno_curso FOREIGN KEY (id_curso) REFERENCES cursos (id_curso)
);
CREATE TABLE materias(
	materia_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_curso INT,
    professor VARCHAR(100),
    carga_horaria INT NOT NULL, 
    CONSTRAINT fk_materiais_cursos FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
    );
    INSERT INTO cursos(nome, descricao) VALUES 
    ("Desenvolvimentos de Sistemas", " Curso voltado para desenvolvimento de software e boas práticas"),
    ("Administração", " Curso sobre análise e administração de empresas"),
    ("Nutrição", "Curso sobre nutrologia, cadeia alimentar e saúde humana");
    
    SELECT * FROM cursos;
    
    INSERT INTO materias(nome, id_curso, professor, carga_horaria) VALUES
		("Banco de Dados II", 1, "Cleiton da Silva", 60),
        ("Gestão e Administração de Empresas I", 2, "Thiago Pascotto", 50),
        ("Cálculos de Biopedância", 3, " Miriam Machado", 55);
        
	SELECT * FROM materias;
    
    INSERT INTO alunos(nome, idade, email, data_nascimento, id_curso, telefone) VALUES
		("Geovana Passos", 19, "geovana@etec.sp.gov.br", "2001-05-10", 1, "(11)8998776786"),
        ("Amanda Silva", 18, "maandinha@etec.sp.gov.br", "2007-02-07",2, "(11)8282828282" ),
        ("Daniel Alicrim", 17, "Danidani@etec.sp.gov.br", "2006-03-03", 3, "(11)838383");
	
    SELECT * FROM alunos;
    
    SELECT 
		alunos.nome, cursos.nome
    FROM
		alunos
    INNER JOIN 
		cursos
    ON
		alunos.id_curso = cursos.id_curso;
        
    
