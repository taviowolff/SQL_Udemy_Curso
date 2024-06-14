/* Iniciando a modelagem Física */

/* Criação do Banco de Dados */


CREATE DATABASE EXEMPLO

CREATE DATABASE PROJETO;

/* Conectando ao Banco de Dados */

USE PROJETO;

/* Criação da tabela de Clientes */

CREATE TABLE CLIENTE
(
    ID_CLIENTE INT PRIMARY KEY,
    NOME VARCHAR(30),
    SEXO CHAR(1),
    CPF CHAR(11),
    EMAIL VARCHAR(30),
    TELEFONE VARCHAR(30),
    ENDERECO VARCHAR(100)
);

/* verificando a criação da tabela */

SHOW TABLES;

/* Descobrindo a estrutura da tabela */

DESC CLIENTE;