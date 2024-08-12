/* NOME, SEXO, BAIRRO, CIDADE, TIPO, NUMERO */

SELECT CLIENTE.NOME, CLIENTE.SEXO, ENDERECO.BAIRRO, ENDERECO.CIDADE, TELEFONE.TIPO, TELEFONE.NUMERO
FROM CLIENTE
    INNER JOIN ENDERECO
    ON CLIENTE.IDCLIENTE = ENDERECO.ID_CLIENTE
    INNER JOIN TELEFONE
    ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE;

+--------+------+-----------+--------------+------+-----------+
| NOME   | SEXO | BAIRRO    | CIDADE       | TIPO | NUMERO    |
+--------+------+-----------+--------------+------+-----------+
| Maria  | F    | VALADARES | MUNIQUE      | CEL  | 9781-6966 |
| Carlos | M    | ZONA SUL  | ARACRUZ      | CEL  | 9591-6966 |
| Carlos | M    | ZONA SUL  | ARACRUZ      | RES  | 3222-6966 |
| André  | M    | CENTRO    | VITÓRIA      | CEL  | 9341-6966 |
| Daiana | F    | CENTRO    | B. HORIZONTE | COM  | 9624-6966 |
| Pedro  | M    | ZUMBIS    | PALMARES     | CEL  | 9764-6966 |
+--------+------+-----------+--------------+------+-----------+

-- FALTA O NOME DO JOÃO COMO RESOLVER?
/* Para conseguir inserir o João na lista, mesmo ele não tendo o número usa-se a clausula LEFT JOIN

LEFT JOIN: Retorna todos os registros da tabela à esquerda (CLIENTE) 
e os registros correspondentes da tabela à direita (TELEFONE). 
Se não houver correspondência, os resultados da tabela à direita serão nulos.
 */

SELECT 
    CLIENTE.NOME, 
    CLIENTE.SEXO, 
    ENDERECO.BAIRRO, 
    ENDERECO.CIDADE, 
    TELEFONE.TIPO, 
    TELEFONE.NUMERO
FROM 
    CLIENTE
    INNER JOIN ENDERECO 
    ON CLIENTE.IDCLIENTE = ENDERECO.ID_CLIENTE
    LEFT JOIN TELEFONE 
    ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE;
