/*
FUNÇÕES IFNULL
*/

-- NOME, EMAIL, NUMERO, ESTADO

SELECT 
    CLIENTE.NOME, 
    CLIENTE.EMAIL, 
    TELEFONE.NUMERO AS TELEFONE, 
    ENDERECO.ESTADO 
FROM 
    CLIENTE
    INNER JOIN ENDERECO 
    ON CLIENTE.IDCLIENTE = ENDERECO.ID_CLIENTE
    LEFT JOIN TELEFONE 
    ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE;

+----------+--------------------+----------+--------+
| NOME     | EMAIL              | NUMERO   | ESTADO |
+----------+--------------------+----------+--------+
| GIOVANA  | NULL               | 99656675 | MG     |
| GIOVANA  | NULL               | 68976565 | MG     |
| KARLA    | KARLA@GMAIL.COM    | NULL     | RJ     |
| DANIELE  | DANIELE@GMAIL.COM  | 55689654 | RJ     |
| DANIELE  | DANIELE@GMAIL.COM  | 88668786 | RJ     |
| DANIELE  | DANIELE@GMAIL.COM  | 33567765 | RJ     |
| LORENA   | NULL               | 88687979 | RJ     |
| EDUARDO  | NULL               | 88965676 | ES     |
| ANTONIO  | ANTONIO@IG.COM     | NULL     | RJ     |
| ANTONIO  | ANTONIO@UOL.COM    | 89966809 | PR     |
| ELAINE   | ELAINE@GLOBO.COM   | 88679978 | SP     |
| CARMEM   | CARMEM@IG.COM      | 99655768 | PR     |
| ADRIANA  | ADRIANA@GMAIL.COM  | 89955665 | SP     |
| JOICE    | JOICE@GMAIL.COM    | 89766554 | RJ     |
| JOICE    | JOICE@GMAIL.COM    | 77455786 | RJ     |
| JOAQUINA | JOAQUINA@GMAIL.COM | 44522578 | RJ     |
| JOAQUINA | JOAQUINA@GMAIL.COM | 77755785 | RJ     |
| JOZIENE  | JOZIENE@GMAIL.COM  | NULL     | RJ     |
+----------+--------------------+----------+--------+


SELECT 
    CLIENTE.NOME, 
    IFNULL(CLIENTE.EMAIL,'----') AS  EMAIL, 
    ENDERECO.ESTADO,
    TELEFONE.NUMERO AS TELEFONE
FROM CLIENTE
    INNER JOIN ENDERECO 
    ON CLIENTE.IDCLIENTE = ENDERECO.ID_CLIENTE
    LEFT JOIN TELEFONE 
    ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE;

+----------+--------------------+--------+----------+
| NOME     | EMAIL              | ESTADO | TELEFONE |
+----------+--------------------+--------+----------+
| GIOVANA  | ----               | MG     | 68976565 |
| GIOVANA  | ----               | MG     | 99656675 |
| KARLA    | KARLA@GMAIL.COM    | RJ     | NULL     |
| DANIELE  | DANIELE@GMAIL.COM  | RJ     | 33567765 |
| DANIELE  | DANIELE@GMAIL.COM  | RJ     | 88668786 |
| DANIELE  | DANIELE@GMAIL.COM  | RJ     | 55689654 |
| LORENA   | ----               | RJ     | 88687979 |
| EDUARDO  | ----               | ES     | 88965676 |
| ANTONIO  | ANTONIO@IG.COM     | RJ     | NULL     |
| ANTONIO  | ANTONIO@UOL.COM    | PR     | 89966809 |
| ELAINE   | ELAINE@GLOBO.COM   | SP     | 88679978 |
| CARMEM   | CARMEM@IG.COM      | PR     | 99655768 |
| ADRIANA  | ADRIANA@GMAIL.COM  | SP     | 89955665 |
| JOICE    | JOICE@GMAIL.COM    | RJ     | 77455786 |
| JOICE    | JOICE@GMAIL.COM    | RJ     | 89766554 |
| JOAQUINA | JOAQUINA@GMAIL.COM | RJ     | 77755785 |
| JOAQUINA | JOAQUINA@GMAIL.COM | RJ     | 44522578 |
| JOZIENE  | JOZIENE@GMAIL.COM  | RJ     | NULL     |
+----------+--------------------+--------+----------+


-- o uso de IFNULL nesse exemplo ajudou a filtrar os dados que estavam escrito NULL para ----