-- CRIANDO UM DATABASE
CREATE DATABASE EX2;

-- CONECTANDO DATABASE;
USE EX2;

CREATE TABLE CLIENTE(
    IDUSUARIO INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(30),
    LOGIN VARCHAR(30),
    SENHA VARCHAR(100)
);

CREATE TABLE BKP_CLIENTE(
    IDBACKUP INT PRIMARY KEY AUTO_INCREMENT,
    IDUSUARIO INT,
    NOME VARCHAR(30),
    LOGIN VARCHAR(30)
);

DELIMITER $

CREATE TRIGGER backup_cliente 
BEFORE DELETE ON CLIENTE
FOR EACH ROW 
BEGIN
    INSERT INTO BKP_CLIENTE (IDUSUARIO, NOME, LOGIN)
    VALUES (OLD.IDUSUARIO, OLD.NOME, OLD.LOGIN);
END$

-- CREATE TRIGGER NOME 
-- BEFORE DELETE ON CLIENTE
-- FOR EACH ROW 
-- BEGIN
--     INSERT INT BKP_CLIENTE(NULL, IDUSUARIO, NOME, LOGIN)
--     VALUES (NULL, OLD.IDUSUARIO, OLD.NOME, OLD.LOGIN);
-- END$

DELIMITER ;

-- INSERINDO VALORES NA TABELA CLIENTE
INSERT INTO CLIENTE (NOME, LOGIN, SENHA) VALUES
('Carlos Silva', 'carlos_s', 'senha123'),
('Ana Pereira', 'ana_p', 'senha456'),
('João Souza', 'joao_s', 'senha789'),
('Maria Oliveira', 'maria_o', 'senha321'),
('Pedro Costa', 'pedro_c', 'senha654');

SELECT * FROM CLIENTE;
+-----------+----------------+----------+----------+
| IDUSUARIO | NOME           | LOGIN    | SENHA    |
+-----------+----------------+----------+----------+
|         1 | Carlos Silva   | carlos_s | senha123 |
|         2 | Ana Pereira    | ana_p    | senha456 |
|         3 | João Souza     | joao_s   | senha789 |
|         4 | Maria Oliveira | maria_o  | senha321 |
|         5 | Pedro Costa    | pedro_c  | senha654 |
+-----------+----------------+----------+----------+

-- DELETANDO UM USUÁRIO 
DELETE FROM CLIENTE
WHERE IDUSUARIO = 5;

+----------+-----------+-------------+---------+
| IDBACKUP | IDUSUARIO | NOME        | LOGIN   |
+----------+-----------+-------------+---------+
|        1 |         5 | Pedro Costa | pedro_c |
+----------+-----------+-------------+---------+