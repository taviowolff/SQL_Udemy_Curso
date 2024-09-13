/* organização de chaves - constrait (regra) */

-- Criação da tabela JOGADOR
CREATE TABLE JOGADOR(
    IDJOGADOR INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(30)
);

-- Criação da tabela TIMES
CREATE TABLE TIMES(
    IDTIME INT PRIMARY KEY AUTO_INCREMENT,
    NOMETIME VARCHAR(30),
    ID_JOGADOR INT,
    FOREIGN KEY (ID_JOGADOR) REFERENCES JOGADOR(IDJOGADOR)
);
-- Está é uma maneira possível, mas incorreta de se criar uma tabela com chave estrangeira 

-- Inserção de dados na tabela JOGADOR
INSERT INTO JOGADOR VALUES(NULL, 'GUERREIRO');

-- Inserção de dados na tabela TIMES 
INSERT INTO TIMES VALUES(NULL, 'FLAMENG', 1);

-- Exibindo a criação da tabela JOGADOR
SHOW CREATE TABLE JOGADOR;

-- | jogador | CREATE TABLE `jogador` (
--   `IDJOGADOR` int NOT NULL AUTO_INCREMENT,
--   `NOME` varchar(30) DEFAULT NULL,
--   PRIMARY KEY (`IDJOGADOR`)
-- ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |

-- Exibindo a criação da tabela TIMES
SHOW CREATE TABLE TIMES;

-- | TIMES | CREATE TABLE `times` (
--   `IDTIME` int NOT NULL AUTO_INCREMENT,
--   `NOMETIME` varchar(30) DEFAULT NULL,
--   `ID_JOGADOR` int DEFAULT NULL,
--   PRIMARY KEY (`IDTIME`),
--   KEY `ID_JOGADOR` (`ID_JOGADOR`),
--   CONSTRAINT `times_ibfk_1` FOREIGN KEY (`ID_JOGADOR`) REFERENCES `jogador` (`IDJOGADOR`)
-- ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |

-- Basicamente o incremento de uma chave estrangeira dentro de uma tabela
-- A torna menos legível, podendo ocasionar erros na interpretação para outras pessoas
-- ou dificuldade no reparo do banco de dados.