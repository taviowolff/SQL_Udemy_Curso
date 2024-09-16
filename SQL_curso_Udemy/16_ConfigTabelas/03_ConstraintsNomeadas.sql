/* ORGANIZANDO CHAVES E ACOES DE CONSTRAITS */ 

-- CONSTRAINT SERVE PARA DEIXAR A CHAVE ESTRANGEIRA MAIS ORGANIZADA NAS LINHAS DE CÓDIGO
-- MELHORANDO A FORMA COMO É LIDA A REGRA DE NEGÓCIO 

USE COMERCIO;
-- USAR A TABELA COMERCIO

DROP TABLE CLIENTE;
DROP TABLE ENDERECO;
DROP TABLE TELEFONE;



CREATE TABLE CLIENTE(
    IDCLIENTE INT,
    NOME VARCHAR(30) NOT NULL
);

CREATE TABLE TELEFONE(
    IDTELEFONE INT,
    TIPO CHAR(3) NOT NULL,
    NUMERO VARCHAR(10) NOT NULL,
    ID_CLIENTE INT
);

ALTER TABLE CLIENTE ADD CONSTRAINT PK_CLIENTE
PRIMARY KEY(IDCLIENTE);

ALTER TABLE TELEFONE ADD CONSTRAINT FK_CLIENTE_TELEGONE
FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE);


SHOW CREATE TABLE CLIENTE;

| CLIENTE | CREATE TABLE `cliente` (
  `IDCLIENTE` int NOT NULL,
  `NOME` varchar(30) NOT NULL,
  PRIMARY KEY (`IDCLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |


SHOW CREATE TABLE TELEFONE;

| TELEFONE | CREATE TABLE `telefone` (
  `IDTELEFONE` int DEFAULT NULL,
  `TIPO` char(3) NOT NULL,
  `NUMERO` varchar(10) NOT NULL,
  `ID_CLIENTE` int DEFAULT NULL,
  KEY `FK_CLIENTE_TELEGONE` (`ID_CLIENTE`),
  CONSTRAINT `FK_CLIENTE_TELEGONE` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`IDCLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |

/* DICIONAROS DE DADOS */

SHOW DATABASES;

+--------------------+
| Database           |
+--------------------+
| banco              |
| biblioteca         |
| comercio           |
| exercicio          |
| faculdade          |
| information_schema*|
| mysql *            |
| performance_schema*|
| projeto            |
| sys                |
+--------------------+

-- AS TRES DATABASES MARCADAS POR * SAO PRESENTES DO DICIONARIO

USE information_schema;
-- AO CONECTAR USEI O SHOW TABLES E MOSTROU MUITAS TABELAS DESSA DATABASE

DESC TABLE_CONSTRAINTS;
+--------------------+-------------+------+-----+---------+-------+
| Field              | Type        | Null | Key | Default | Extra |
+--------------------+-------------+------+-----+---------+-------+
| CONSTRAINT_CATALOG | varchar(64) | YES  |     | NULL    |       |
| CONSTRAINT_SCHEMA  | varchar(64) | YES  |     | NULL    |       | *
| CONSTRAINT_NAME    | varchar(64) | YES  |     | NULL    |       | *
| TABLE_SCHEMA       | varchar(64) | YES  |     | NULL    |       |
| TABLE_NAME         | varchar(64) | YES  |     | NULL    |       | *
| CONSTRAINT_TYPE    | varchar(11) | NO   |     |         |       | *
| ENFORCED           | varchar(3)  | NO   |     |         |       |
+--------------------+-------------+------+-----+---------+-------+


SELECT 
    CONSTRAINT_SCHEMA AS 'BANCO',
    TABLE_NAME AS 'TABELA',
    CONSTRAINT_TYPE AS 'TIPO'
FROM TABLE_CONSTRAINTS;
-- ESSA REQUISIÇÃO PUXA MUITAS CONSTRAINTS, MAS PARA FILTRAR O QUE NÓS QUEREMOS USE A FILTRAGEM

SELECT 
    CONSTRAINT_SCHEMA AS 'BANCO',
    TABLE_NAME AS 'TABELA',
    CONSTRAINT_NAME AS 'NOME',
    CONSTRAINT_TYPE AS 'TIPO'
FROM TABLE_CONSTRAINTS
WHERE CONSTRAINT_SCHEMA = 'COMERCIO';

+----------+----------+---------------------+-------------+
| BANCO    | TABELA   | NOME                | TIPO        |
+----------+----------+---------------------+-------------+
| comercio | cliente  | PRIMARY             | PRIMARY KEY |
| comercio | telefone | FK_CLIENTE_TELEGONE | FOREIGN KEY |
+----------+----------+---------------------+-------------+