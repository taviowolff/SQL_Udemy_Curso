/* modelando uma biblioteca de livros */

CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE livros (
    Id_livro INT PRIMARY KEY,
    Titulo VARCHAR(100),
    Autor VARCHAR(40),
    Sexo_autor CHAR(1),
    Numero_paginas INT,
    Editora VARCHAR(20),
    Valor_livro INT,
    Estado_editora CHAR(2),
    Ano_publicacao INT
);

/* Inserindo dados na tabela */

INSERT INTO livros
VALUES 
    (1, 'Cavaleiro Real', 'Ana Claudia', 'F', 465, 'Atlas', 49.9, 'RJ', 2009),
    (2, 'SQL para leigos', 'João Nunes', 'M', 450, 'Addison', 98, 'SP', 2018),
    (3, 'Receitas Caseiras', 'Celia Tavares', 'F', 210, 'Atlas', 45, 'RJ', 2008),
    (4, 'Pessoas Efetivas', 'Eduardo Santos', 'M', 390, 'Beta', 78.99, 'RJ', 2018),
    (5, 'Habitos Saudáveis', 'Eduardo Santos', 'M', 630, 'Beta', 150.98, 'RJ', 2019),
    (6, 'A Casa Marrom', 'Hermes Macedo', 'M', 250, 'Bubba', 60, 'MG', 2016),
    (7, 'Estacio Querido', 'Geraldo Francisco', 'M', 310, 'Insignia', 100, 'ES', 2015),
    (8, 'Pra sempre amigas', 'Leda Silva', 'F', 510, 'Insignia', 78.98, 'ES', 2011),
    (9, 'Copas Inesqueciveis', 'Marco Alcantara', 'M', 200, 'Larson', 130.98, 'RS', 2018),
    (10, 'O poder da mente', 'Clara Mafra', 'F', 120, 'Continental', 56.58, 'SP', 2017);

/* 1 - trazer todos os dados */

SELECT * FROM livros;

/* 2 - Trazer o nome do livro e o nome da editora */

SELECT Titulo, Editora FROM livros;

/* 3 - Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino */

SELECT Titulo, Estado_editora FROM livros WHERE Sexo_autor = 'M';

/* 4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino */

SELECT Titulo, Numero_paginas FROM livros WHERE Sexo_autor = 'F';

/* 5 - Trazer os valores dos livros das editoras de São Paulo */

SELECT Valor_livro FROM livros WHERE Estado_editora = 'SP';

/* 6 - Trazer os dados dos autores do sexo masculino que tiveram livros publicados em São Paulo ou Rio de Janeiro (Questão Desafio) */

SELECT * FROM livros WHERE Sexo_autor = 'M' AND (Estado_editora = 'SP' OR Estado_editora = 'RJ');