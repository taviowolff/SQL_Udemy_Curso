
--RECRIANDO TABELA CLIENTE
CREATE TABLE CLIENTE(
IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
NOME VARCHAR(30) NOT NULL,
SEXO ENUM('M','F') NOT NULL,
EMAIL VARCHAR(50) UNIQUE,
CPF VARCHAR(18) UNIQUE);


--RECRIANDO TABELA ENDERECO
CREATE TABLE ENDERECO(
    IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
    NUMERO VARCHAR(20) NOT NULL,
    BAIRRO VARCHAR(30) NOT NULL,
    ESTADO CHAR(2) NOT NULL,
    ID_CLIENTE INT UNIQUE,
    FOREIGN KEY (ID_CLIENTE)
    REFERENCES CLIENTE(IDCLIENTE)
);



CREATE TABLE TELEFONE(
    IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,

    
)

ALTER TABLE ENDERECO CHANGE IDTELEGONE IDENDERECO INT NOT NULL PRIMARY KEY