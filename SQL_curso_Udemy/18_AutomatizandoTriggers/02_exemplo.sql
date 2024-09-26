-- Criar o banco de dados
CREATE DATABASE EX1;
USE EX1;

-- Criar a tabela de auditoria
CREATE TABLE AUTORIA_CLIENTE(
    IDAUIT INT PRIMARY KEY AUTO_INCREMENT,
    IDCLIENTE INT,
    NOME VARCHAR(30),
    DATA_INSERCAO TIMESTAMP
);

-- Criar a tabela CLIENTE (corrigida)
CREATE TABLE CLIENTE(
    IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(30),
    DATA_INSERCAO TIMESTAMP
);

-- Alterar o delimitador
DELIMITER $

-- Criar o trigger para auditoria
CREATE TRIGGER AUDIT_INSERT_CLIENTE
AFTER INSERT ON CLIENTE
FOR EACH ROW
BEGIN   
    INSERT INTO AUTORIA_CLIENTE (IDCLIENTE, NOME, DATA_INSERCAO)
    VALUES (NEW.IDCLIENTE, NEW.NOME, NOW());
END$

-- Voltar ao delimitador padrão
DELIMITER ;

-- Inserir os clientes na tabela CLIENTE (sem o NULL, o ID é auto-incrementado)
INSERT INTO CLIENTE (NOME, DATA_INSERCAO) VALUES
('Carlos Silva', NOW()),
('Ana Pereira', NOW()),
('João Souza', NOW()),
('Maria Oliveira', NOW()),
('Pedro Costa', NOW());
