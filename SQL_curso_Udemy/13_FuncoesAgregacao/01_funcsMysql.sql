-- DEFINIR DATABASE
USE FACULDADE; 

Database changed

-- MOSTRAR AS TABLES
SHOW TABLES;

+----------+-------------+------+-----+---------+----------------+
| Field    | Type        | Null | Key | Default | Extra          |
+----------+-------------+------+-----+---------+----------------+
| ID_CURSO | int         | NO   | PRI | NULL    | auto_increment |
| NOME     | varchar(30) | NO   |     | NULL    |                |
| HORAS    | int         | NO   |     | NULL    |                |
| PRECO    | float       | YES  |     | NULL    |                |
+----------+-------------+------+-----+---------+----------------+

-- CRIAR UMA TABELA DE VENDEDORES 
CREATE TABLE VENDEDORES (
    ID_VENDEDOR INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(30),
    SEXO CHAR(1),
    JANEIRO FLOAT(10,2),
    FEVEREIRO FLOAT(10,2),
    MARCO FLOAT(10,2)
);


-- INSERINDO VALORES NO BANCO DE DADOS
INSERT INTO VENDEDORES (NOME, SEXO, JANEIRO, FEVEREIRO, MARCO) VALUES 
('Carlos Silva', 'M', 1250.50, 1320.75, 1100.20),
('Maria Oliveira', 'F', 1400.00, 1450.00, 1380.50),
('João Pereira', 'M', 1120.00, 1250.00, 1190.30),
('Ana Souza', 'F', 1300.75, 1350.85, 1290.60),
('Paulo Santos', 'M', 1220.50, 1180.45, 1230.75),
('Fernanda Lima', 'F', 1350.60, 1400.70, 1280.85),
('José Almeida', 'M', 1450.00, 1500.00, 1390.00),
('Lucia Costa', 'F', 1270.75, 1300.85, 1350.25),
('Bruno Rocha', 'M', 1150.30, 1170.60, 1200.50),
('Juliana Ribeiro', 'F', 1420.45, 1440.75, 1390.20);

-- MOSTRANDO DADOS DA TABELA
SELECT * FROM VENDEDORES;

+-------------+-----------------+------+---------+-----------+---------+
| ID_VENDEDOR | NOME            | SEXO | JANEIRO | FEVEREIRO | MARCO   |
+-------------+-----------------+------+---------+-----------+---------+
|           1 | Carlos Silva    | M    | 1250.50 |   1320.75 | 1100.20 |
|           2 | Maria Oliveira  | F    | 1400.00 |   1450.00 | 1380.50 |
|           3 | João Pereira    | M    | 1120.00 |   1250.00 | 1190.30 |
|           4 | Ana Souza       | F    | 1300.75 |   1350.85 | 1290.60 |
|           5 | Paulo Santos    | M    | 1220.50 |   1180.45 | 1230.75 |
|           6 | Fernanda Lima   | F    | 1350.60 |   1400.70 | 1280.85 |
|           7 | José Almeida    | M    | 1450.00 |   1500.00 | 1390.00 |
|           8 | Lucia Costa     | F    | 1270.75 |   1300.85 | 1350.25 |
|           9 | Bruno Rocha     | M    | 1150.30 |   1170.60 | 1200.50 |
|          10 | Juliana Ribeiro | F    | 1420.45 |   1440.75 | 1390.20 |
+-------------+-----------------+------+---------+-----------+---------+


-- SELECIONANDO O MAIOR VALOR VENDIDO EM FEVEREIRO USANDO MAX
SELECT MAX(FEVEREIRO) FROM VENDEDORES;

-- SELECIONANDO O MENOR VALOR VENDIDO EM FEVEREIRO USANDO MIN
SELECT MIN(FEVEREIRO) FROM VENDEDORES;

-- SELECIONANDO A MÉDIA DE VALOR VENDIDO EM FEVEREIRO USANDO AVG
SELECT AVG(FEVEREIRO) FROM VENDEDORES;
SELECT TRUNCATE(AVG(FEVEREIRO),2) AS MEDIA_FEV FROM VENDEDORES;

