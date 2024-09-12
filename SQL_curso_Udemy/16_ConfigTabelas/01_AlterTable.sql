/* ALTERANDO TABLEAS */

CREATE TABLE TABELA (
    COLUNA1 VARCHAR(30),
    COLUNA2 VARCHAR(30),
    COLUNA3 VARCHAR(30)
);
-- Query OK, 0 rows affected (0.03 sec)


DESC TABELA;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| COLUNA1 | varchar(30) | YES  |     | NULL    |       |
| COLUNA2 | varchar(30) | YES  |     | NULL    |       |
| COLUNA3 | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+


-- ADICIONANDO MA PK 

ALTER TABLE TABELA
ADD PRIMARY KEY (COLUNA1);
-- Query OK, 0 rows affected (0.06 sec)

DESC TABELA;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| COLUNA1 | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA2 | varchar(30) | YES  |     | NULL    |       |
| COLUNA3 | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+


-- ADICIONANDO COLUNA SEM POSICAO. VAI PARA ULTIMA POSICAO 

ALTER TABLE TABELA
ADD COLUNA VARCHAR(30);
-- Query OK, 0 rows affected (0.02 sec)
-- Records: 0  Duplicates: 0  Warnings: 0

DESC TABELA;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| COLUNA1 | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA2 | varchar(30) | YES  |     | NULL    |       |
| COLUNA3 | varchar(30) | YES  |     | NULL    |       |
| COLUNA  | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+

ALTER TABLE TABELA
ADD COLUNA4 VARCHAR(30) NOT NULL UNIQUE
AFTER COLUNA3;


+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| COLUNA1 | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA2 | varchar(30) | YES  |     | NULL    |       |
| COLUNA3 | varchar(30) | YES  |     | NULL    |       |
| COLUNA4 | varchar(30) | NO   | UNI | NULL    |       |
| COLUNA  | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+


-- MODIFICANDO O TIPO DE UM CAMPO
ALTER TABLE TABELA MODIFY COLUNA2 DATE NOT NULL;

+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| COLUNA1 | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA2 | date        | NO   |     | NULL    |       |
| COLUNA3 | varchar(30) | YES  |     | NULL    |       |
| COLUNA4 | varchar(30) | NO   | UNI | NULL    |       |
| COLUNA  | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+

-- RENOMEANDO O NOME DA TABELA
ALTER TABLE TABELA
RENAME PESSOA;


CREATE TABLE TIME(
    IDTIME INT PRIMARY KEY AUTO_INCREMENT,
    TIME VARCHAR(30),
    ID_PESSOA VARCHAR(30)
);

-- FOREIGN KEY
ALTER TABLE TIME
ADD FOREIGN KEY(ID_PESSOA)
REFERENCES PESSOA(COLUNA1);


-- SHOW CREATE TABLE TIME;

| Table | Create Table                                                                                                                                                                                                                                                                                                                                                |

| time  | CREATE TABLE `time` (
  `IDTIME` int NOT NULL AUTO_INCREMENT,
  `TIME` varchar(30) DEFAULT NULL,
  `ID_PESSOA` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IDTIME`),
  KEY `ID_PESSOA` (`ID_PESSOA`),
  CONSTRAINT `time_ibfk_1` FOREIGN KEY (`ID_PESSOA`) REFERENCES `pessoa` (`COLUNA1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |






