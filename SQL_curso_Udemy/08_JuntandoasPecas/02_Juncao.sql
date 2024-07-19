/* JUNCAO -> JOIN */

SELECT NOME, EMAIL, IDCLIENTE
FROM CLIENTE;

SELECT ID_CLIENTE, BAIRRO, CIDADE
FROM ENDERECO;

+--------+------------------+-----------+
| NOME   | EMAIL            | IDCLIENTE |
+--------+------------------+-----------+
| João   | joao@gmail.com   |         2 |
| Maria  | maria@gmail.com  |         3 |
| Carlos | Carlos@gmail.com |         4 |
| André  | andre@gmail.com  |         5 |
| Daiana | daiana@gmail.com |         6 |
| Pedro  | pedro@gmail.com  |         7 |
+--------+------------------+-----------+

+------------+-----------+--------------+
| ID_CLIENTE | BAIRRO    | CIDADE       |
+------------+-----------+--------------+
|          6 | CENTRO    | B. HORIZONTE |
|          5 | CENTRO    | VITÓRIA      |
|          4 | ZONA SUL  | ARACRUZ      |
|          3 | VALADARES | MUNIQUE      |
|          2 | DALES     | IGUAPORE     |
|          7 | ZUMBIS    | PALMARES     |
+------------+-----------+--------------+

SELECT NOME, SEXO, BAIRRO, CIDADE /* PROJECAO */
FROM CLIENTE, ENDERECO /* ORIGEM */
WHERE IDCLIENTE = ID_CLIENTE; /* JUNCAO */

+--------+------+-----------+--------------+
| NOME   | SEXO | BAIRRO    | CIDADE       |
+--------+------+-----------+--------------+
| João   | M    | DALES     | IGUAPORE     |
| Maria  | F    | VALADARES | MUNIQUE      |
| Carlos | M    | ZONA SUL  | ARACRUZ      |
| André  | M    | CENTRO    | VITÓRIA      |
| Daiana | F    | CENTRO    | B. HORIZONTE |
| Pedro  | M    | ZUMBIS    | PALMARES     |
+--------+------+-----------+--------------+


SELECT NOME, SEXO, BAIRRO, CIDADE 
FROM CLIENTE, ENDERECO 
WHERE IDCLIENTE = ID_CLIENTE
AND SEXO = 'F'; 

+--------+------+-----------+--------------+
| NOME   | SEXO | BAIRRO    | CIDADE       |
+--------+------+-----------+--------------+
| Maria  | F    | VALADARES | MUNIQUE      |
| Daiana | F    | CENTRO    | B. HORIZONTE |
+--------+------+-----------+--------------+

/* 
WHERE IDCLIENTE = ID_CLIENTE
AND SEXO = 'F'; 
TABELA VERDADE 
*/

SELECT NOME, SEXO, BAIRRO, CIDADE
FROM CLIENTE
INNER JOIN ENDERECO
ON IDCLIENTE = ID_CLIENTE;

+--------+------+-----------+--------------+
| NOME   | SEXO | BAIRRO    | CIDADE       |
+--------+------+-----------+--------------+
| João   | M    | DALES     | IGUAPORE     |
| Maria  | F    | VALADARES | MUNIQUE      |
| Carlos | M    | ZONA SUL  | ARACRUZ      |
| André  | M    | CENTRO    | VITÓRIA      |
| Daiana | F    | CENTRO    | B. HORIZONTE |
| Pedro  | M    | ZUMBIS    | PALMARES     |
+--------+------+-----------+--------------+


SELECT NOME, SEXO, BAIRRO, CIDADE /* PROJECAO*/
FROM CLIENTE /* ORIGEM */
    INNER JOIN ENDERECO /* JUNCAO */
    ON IDCLIENTE = ID_CLIENTE
WHERE SEXO = 'F'; /* SELECAO */


SELECT NOME, EMAIL, TIPO, NUMERO
FROM CLIENTE    
INNER JOIN TELEFONE
ON IDCLIENTE = ID_CLIENTE;