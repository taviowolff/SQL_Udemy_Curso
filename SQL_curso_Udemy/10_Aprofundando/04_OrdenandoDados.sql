/* ORDER BY*/

CREATE TABLE ALUNOS(
    NUMERO INT,
    NOME VARCHAR(30)
);

INSERT INTO ALUNOS VALUES(1,'JOAO');
INSERT INTO ALUNOS VALUES(1,'MARIO');
INSERT INTO ALUNOS VALUES(2,'JORGE');
INSERT INTO ALUNOS VALUES(2,'EDUARDO');
INSERT INTO ALUNOS VALUES(3,'OTAVIO');
INSERT INTO ALUNOS VALUES(1,'GUSTAVO');
INSERT INTO ALUNOS VALUES(3,'ESTEVAO');
INSERT INTO ALUNOS VALUES(4,'GABRIEL');
INSERT INTO ALUNOS VALUES(5,'HENRIQUE');
INSERT INTO ALUNOS VALUES(3,'NATHALIA');
INSERT INTO ALUNOS VALUES(5,'BREDON');
INSERT INTO ALUNOS VALUES(6,'ATILA');
INSERT INTO ALUNOS VALUES(6,'JULIA');

-- CHECANDO A TABELA DE ALUNOS

SELECT * FROM ALUNOS;

SELECT * FROM ALUNOS
ORDER BY NUMERO;

SELECT * FROM ALUNOS
ORDER BY 1;
+--------+----------+
| NUMERO | NOME     |
+--------+----------+
|      1 | JOAO     |
|      1 | MARIO    |
|      1 | GUSTAVO  |
|      2 | JORGE    |
|      2 | EDUARDO  |
|      3 | OTAVIO   |
|      3 | ESTEVAO  |
|      3 | NATHALIA |
|      4 | GABRIEL  |
|      5 | HENRIQUE |
|      5 | BREDON   |
|      6 | ATILA    |
|      6 | JULIA    |
+--------+----------+

SELECT * FROM ALUNOS
ORDER BY 2;
+--------+----------+
| NUMERO | NOME     |
+--------+----------+
|      6 | ATILA    |
|      5 | BREDON   |
|      2 | EDUARDO  |
|      3 | ESTEVAO  |
|      4 | GABRIEL  |
|      1 | GUSTAVO  |
|      5 | HENRIQUE |
|      1 | JOAO     |
|      2 | JORGE    |
|      6 | JULIA    |
|      1 | MARIO    |
|      3 | NATHALIA |
|      3 | OTAVIO   |
+--------+----------+

/* ORDENANDO POR MAIS DE UMA COLUNA*/

SELECT * FROM ALUNOS
ORDER BY 1, 2;
+--------+----------+
| NUMERO | NOME     |
+--------+----------+
|      1 | GUSTAVO  |
|      1 | JOAO     |
|      1 | MARIO    |
|      2 | EDUARDO  |
|      2 | JORGE    |
|      3 | ESTEVAO  |
|      3 | NATHALIA |
|      3 | OTAVIO   |
|      4 | GABRIEL  |
|      5 | BREDON   |
|      5 | HENRIQUE |
|      6 | ATILA    |
|      6 | JULIA    |
+--------+----------+

SELECT * FROM ALUNOS
ORDER BY NUMERO, NOME;
+--------+----------+
| NUMERO | NOME     |
+--------+----------+
|      1 | GUSTAVO  |
|      1 | JOAO     |
|      1 | MARIO    |
|      2 | EDUARDO  |
|      2 | JORGE    |
|      3 | ESTEVAO  |
|      3 | NATHALIA |
|      3 | OTAVIO   |
|      4 | GABRIEL  |
|      5 | BREDON   |
|      5 | HENRIQUE |
|      6 | ATILA    |
|      6 | JULIA    |
+--------+----------+

/* MESCLANDO ORDER BY COM PROJECAO */

SELECT NOME FROM ALUNOS
ORDER BY 1, 2;
-- INDEXANDO COLUNA

ERROR 1054 (42S22): Unknown column '2' in 'order clause'

SELECT NOME FROM ALUNOS
ORDER BY NUMERO, NOME;
+----------+
| NOME     |
+----------+
| GUSTAVO  |
| JOAO     |
| MARIO    |
| EDUARDO  |
| JORGE    |
| ESTEVAO  |
| NATHALIA |
| OTAVIO   |
| GABRIEL  |
| BREDON   |
| HENRIQUE |
| ATILA    |
| JULIA    |
+----------+


/* ORDER BY DESC / ASC*/

SELECT * FROM ALUNOS
ORDER BY 1 ASC;
+--------+----------+
| NUMERO | NOME     |
+--------+----------+
|      1 | JOAO     |
|      1 | MARIO    |
|      1 | GUSTAVO  |
|      2 | JORGE    |
|      2 | EDUARDO  |
|      3 | OTAVIO   |
|      3 | ESTEVAO  |
|      3 | NATHALIA |
|      4 | GABRIEL  |
|      5 | HENRIQUE |
|      5 | BREDON   |
|      6 | ATILA    |
|      6 | JULIA    |
+--------+----------+

SELECT * FROM ALUNOS
ORDER BY 1 DESC;
+--------+----------+
| NUMERO | NOME     |
+--------+----------+
|      6 | ATILA    |
|      6 | JULIA    |
|      5 | HENRIQUE |
|      5 | BREDON   |
|      4 | GABRIEL  |
|      3 | OTAVIO   |
|      3 | ESTEVAO  |
|      3 | NATHALIA |
|      2 | JORGE    |
|      2 | EDUARDO  |
|      1 | JOAO     |
|      1 | MARIO    |
|      1 | GUSTAVO  |
+--------+----------+

SELECT * FROM ALUNOS
ORDER BY 1 DESC, 2 DESC;
+--------+----------+
| NUMERO | NOME     |
+--------+----------+
|      6 | JULIA    |
|      6 | ATILA    |
|      5 | HENRIQUE |
|      5 | BREDON   |
|      4 | GABRIEL  |
|      3 | OTAVIO   |
|      3 | NATHALIA |
|      3 | ESTEVAO  |
|      2 | JORGE    |
|      2 | EDUARDO  |
|      1 | MARIO    |
|      1 | JOAO     |
|      1 | GUSTAVO  |
+--------+----------+


/* ORDENAÇÃO COM JOINS */

SELECT 
    C.NOME, 
    C.SEXO,
    IFNULL(C.EMAIL, '----') AS EMAIL,
    T.TIPO,
    IFNULL(T.NUMERO, '----') AS NUMERO,
    E.BAIRRO,
    E.CIDADE,
    E.ESTADO
FROM CLIENTE C
    INNER JOIN ENDERECO E
    ON C.IDCLIENTE = E.ID_CLIENTE
    LEFT JOIN TELEFONE T
    ON C.IDCLIENTE = T.ID_CLIENTE;

+----------+------+--------------------+------+----------+----------------+------------+--------+
| NOME     | SEXO | EMAIL              | TIPO | NUMERO   | BAIRRO         | CIDADE     | ESTADO |
+----------+------+--------------------+------+----------+----------------+------------+--------+
| GIOVANA  | F    | ----               | RES  | 68976565 | B. HORIZONTE   | CASCADURA  | MG     |
| GIOVANA  | F    | ----               | CEL  | 99656675 | B. HORIZONTE   | CASCADURA  | MG     |
| KARLA    | M    | KARLA@GMAIL.COM    | NULL | ----     | RIO DE JANEIRO | ESTACIO    | RJ     |
| DANIELE  | M    | DANIELE@GMAIL.COM  | CEL  | 33567765 | RIO DE JANEIRO | CENTRO     | RJ     |
| DANIELE  | M    | DANIELE@GMAIL.COM  | CEL  | 88668786 | RIO DE JANEIRO | CENTRO     | RJ     |
| DANIELE  | M    | DANIELE@GMAIL.COM  | COM  | 55689654 | RIO DE JANEIRO | CENTRO     | RJ     |
| LORENA   | M    | ----               | COM  | 88687979 | RIO DE JANEIRO | COPACABANA | RJ     |
| EDUARDO  | M    | ----               | COM  | 88965676 | VITORIA        | CENTRO     | ES     |
| ANTONIO  | F    | ANTONIO@IG.COM     | NULL | ----     | RIO DE JANEIRO | LEBLON     | RJ     |
| ANTONIO  | M    | ANTONIO@UOL.COM    | CEL  | 89966809 | CURITIBA       | CENTRO     | PR     |
| ELAINE   | M    | ELAINE@GLOBO.COM   | COM  | 88679978 | SAO PAULO      | JARDINS    | SP     |
| CARMEM   | M    | CARMEM@IG.COM      | CEL  | 99655768 | CURITIBA       | BOM RETIRO | PR     |
| ADRIANA  | F    | ADRIANA@GMAIL.COM  | RES  | 89955665 | SAO PAULO      | LAPA       | SP     |
| JOICE    | F    | JOICE@GMAIL.COM    | RES  | 77455786 | RIO DE JANEIRO | CENTRO     | RJ     |
| JOICE    | F    | JOICE@GMAIL.COM    | RES  | 89766554 | RIO DE JANEIRO | CENTRO     | RJ     |
| JOAQUINA | F    | JOAQUINA@GMAIL.COM | RES  | 77755785 | RIO DE JANEIRO | CENTRO     | RJ     |
| JOAQUINA | F    | JOAQUINA@GMAIL.COM | COM  | 44522578 | RIO DE JANEIRO | CENTRO     | RJ     |
| JOZIENE  | F    | JOZIENE@GMAIL.COM  | NULL | ----     | RIO DE JANEIRO | CENTRO     | RJ     |
+----------+------+--------------------+------+----------+----------------+------------+--------+


-- ORDER BY 1 EM SELECT COM JOIN
SELECT 
    C.NOME, 
    C.SEXO,
    IFNULL(C.EMAIL, '----') AS EMAIL,
    T.TIPO,
    IFNULL(T.NUMERO, '----') AS NUMERO,
    E.BAIRRO,
    E.CIDADE,
    E.ESTADO
FROM CLIENTE C
    INNER JOIN ENDERECO E
    ON C.IDCLIENTE = E.ID_CLIENTE
    LEFT JOIN TELEFONE T
    ON C.IDCLIENTE = T.ID_CLIENTE
    ORDER BY 1;

+----------+------+--------------------+------+----------+----------------+------------+--------+
| NOME     | SEXO | EMAIL              | TIPO | NUMERO   | BAIRRO         | CIDADE     | ESTADO |
+----------+------+--------------------+------+----------+----------------+------------+--------+
| ADRIANA  | F    | ADRIANA@GMAIL.COM  | RES  | 89955665 | SAO PAULO      | LAPA       | SP     |
| ANTONIO  | F    | ANTONIO@IG.COM     | NULL | ----     | RIO DE JANEIRO | LEBLON     | RJ     |
| ANTONIO  | M    | ANTONIO@UOL.COM    | CEL  | 89966809 | CURITIBA       | CENTRO     | PR     |
| CARMEM   | M    | CARMEM@IG.COM      | CEL  | 99655768 | CURITIBA       | BOM RETIRO | PR     |
| DANIELE  | M    | DANIELE@GMAIL.COM  | CEL  | 33567765 | RIO DE JANEIRO | CENTRO     | RJ     |
| DANIELE  | M    | DANIELE@GMAIL.COM  | CEL  | 88668786 | RIO DE JANEIRO | CENTRO     | RJ     |
| DANIELE  | M    | DANIELE@GMAIL.COM  | COM  | 55689654 | RIO DE JANEIRO | CENTRO     | RJ     |
| EDUARDO  | M    | ----               | COM  | 88965676 | VITORIA        | CENTRO     | ES     |
| ELAINE   | M    | ELAINE@GLOBO.COM   | COM  | 88679978 | SAO PAULO      | JARDINS    | SP     |
| GIOVANA  | F    | ----               | RES  | 68976565 | B. HORIZONTE   | CASCADURA  | MG     |
| GIOVANA  | F    | ----               | CEL  | 99656675 | B. HORIZONTE   | CASCADURA  | MG     |
| JOAQUINA | F    | JOAQUINA@GMAIL.COM | RES  | 77755785 | RIO DE JANEIRO | CENTRO     | RJ     |
| JOAQUINA | F    | JOAQUINA@GMAIL.COM | COM  | 44522578 | RIO DE JANEIRO | CENTRO     | RJ     |
| JOICE    | F    | JOICE@GMAIL.COM    | RES  | 77455786 | RIO DE JANEIRO | CENTRO     | RJ     |
| JOICE    | F    | JOICE@GMAIL.COM    | RES  | 89766554 | RIO DE JANEIRO | CENTRO     | RJ     |
| JOZIENE  | F    | JOZIENE@GMAIL.COM  | NULL | ----     | RIO DE JANEIRO | CENTRO     | RJ     |
| KARLA    | M    | KARLA@GMAIL.COM    | NULL | ----     | RIO DE JANEIRO | ESTACIO    | RJ     |
| LORENA   | M    | ----               | COM  | 88687979 | RIO DE JANEIRO | COPACABANA | RJ     |
+----------+------+--------------------+------+----------+----------------+------------+--------+
