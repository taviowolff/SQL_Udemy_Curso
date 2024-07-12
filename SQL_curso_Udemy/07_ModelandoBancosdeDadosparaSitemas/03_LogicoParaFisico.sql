CREATE DATABASE COMERCIO;

USE COMERCIO;

CREATE TABLE CLIENTE(
    IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(50) NOT NULL,
    SEXO ENUM ('M','F') NOT NULL,
    EMAIL VARCHAR(50) UNIQUE,
    CPF VARCHAR(15) UNIQUE
);

CREATE TABLE ENDERECO(
    IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
    RUA VARCHAR(30) NOT NULL,
    BAIRRO VARCHAR(30) NOT NULL,
    CIDADE VARCHAR(30) NOT NULL,
    ESTADO CHAR(2) NOT NULL
);

CREATE TABLE TELEFONE(
    IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
    TIPO ENUM('RES','COM','CEL') NOT NULL,
    NUMERO VARCHAR(20) NOT NULL
);

/* 
Endereço é obrigatório cadastro de somente um.

Telefone não é obrigatório cadastro de mais de um (opcional).
*/

/*
Em relacionamentos 1 X 1 a chave estrangeira fica na tabela mais fraca

Em relacionamentos 1 X n a chave estrangeira ficara sempre na cardinalidade n

