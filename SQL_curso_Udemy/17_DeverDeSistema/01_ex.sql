/*
1) Crie um banco de dados chamado projeto e conecte-se ao banco.
2) Faça a seguinte modelagem:

Sr. José quer mordenizar a sua oficina, e por enquanto, cadastra os carros que entram para realizar serviços 
e os seus respectivos donos. Sr. José mencinou que cada cliente possui apenas um carro. Um carro possui uma 
marca. Sr. José também quer saber as cores dos carros para ter idéia de qual tinta comprar, e informa que um
carro pode ter mais de uma cor. Sr. José necessita armazenar os telefones dos clientes, mas não quer que eles
sejam obrigatórios.
*/

-- MINHA DATABASE
CREATE DATABASE OFICINA;

USE OFICINA;

CREATE TABLE CLIENTE(
    CLIENTEID INT PRIMARY KEY,
    NOME VARCHAR(30),
    EMAIL VARCHAR(40)
);

CREATE TABLE TELEFONE(
    TELEFONEID INT PRIMARY KEY,
    NUMERO VARCHAR(15),
    TIPO ENUM('CEL','RES','COM'), 
    ID_CLIENTE INT
);

ALTER TABLE TELEFONE ADD CONSTRAINT FK_CLIENTE_TELEFONE
    FOREIGN KEY (ID_CLIENTE)
    REFERENCES CLIENTE (CLIENTEID);


CREATE TABLE CARRO (
    CARROID INT PRIMARY KEY,
    MARCA VARCHAR(30),
    ID_CLIENTE INT
);
 
ALTER TABLE CARRO ADD CONSTRAINT FK_CLIENTE_CARRO
    FOREIGN KEY (ID_CLIENTE)
    REFERENCES CLIENTE (CLIENTEID);

CREATE TABLE COR (
    IDCOR INT PRIMARY KEY,
    COR VARCHAR(15),
    CARRO_ID INT
);
 
ALTER TABLE COR ADD CONSTRAINT FK_CARRO_COR
    FOREIGN KEY (CARRO_ID)
    REFERENCES CARRO (CARROID);