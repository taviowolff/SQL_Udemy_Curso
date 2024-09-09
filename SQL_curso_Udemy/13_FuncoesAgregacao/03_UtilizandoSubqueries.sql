/*Vendedor que vendeu menos em março e o seu nome*/

USE FACULDADE;

SELECT MIN(MARCO) 
FROM VENDEDORES
GROUP BY MARCO;

+------------+
| MIN(MARCO) |
+------------+
|    1100.20 |
|    1380.50 |
|    1190.30 |
|    1290.60 |
|    1230.75 |
|    1280.85 |
|    1390.00 |
|    1350.25 |
|    1200.50 |
|    1390.20 |
+------------+

SELECT MIN(MARCO) 
FROM VENDEDORES;

+------------+
| MIN(MARCO) |
+------------+
|    1100.20 |
+------------+

SELECT MIN(MARCO), NOME
FROM VENDEDORES;

-- In aggregated query without GROUP BY, expression #2 of SELECT list contains nonaggregated 
-- column 'faculdade.VENDEDORES.NOME'; this is incompatible with sql_mode=only_full_group_by
ESSE ERRO ESTAVA RETORNANDO ASSIM POR CONTA DE UMA CONFIGURAÇÃO DO SQL QUE NAO DEIXA COMPATIVEL
GRUPOS NAO ORGANIZADOS 

SET SESSION sql_mode=(SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', ''));
COLOQUEI ESSE CÓDIGO PARA RODAR NO BANCO DE DADOS E PUDE UTILIZAR O MESMO REQUERIMENTO QUE ME RETORNOU

+------------+--------------+
| MIN(MARCO) | NOME         |
+------------+--------------+
|    1100.20 | Carlos Silva |
+------------+--------------+

SELECT NOME, MAX(MARCO) AS MAX_MAR
FROM VENDEDORES
ORDER BY DESC;

+--------------+---------+
| NOME         | MAX_MAR |
+--------------+---------+
| Carlos Silva | 1390.20 |
+--------------+---------+

-- PROFESSOR FEZ TUDO ISSO PRA MOSTRAR COMO FUNCIONA AS SUBQUERIES 

-- UM QUERY DENTRO DA OUTRA
SELECT NOME, MARCO 
FROM VENDEDORES
WHERE MARCO = (SELECT MIN(MARCO) FROM VENDEDORES);

+--------------+---------+
| NOME         | MARCO   |
+--------------+---------+
| Carlos Silva | 1100.20 |
+--------------+---------+

-- O RETORNO ESPERADO 

/*
NOME E O VALOR QUE VENDEU MAIS EM MARCO
*/

SELECT NOME, MARCO 
FROM VENDEDORES
WHERE MARCO = (SELECT MAX(MARCO) FROM VENDEDORES);

+-----------------+---------+
| NOME            | MARCO   |
+-----------------+---------+
| Juliana Ribeiro | 1390.20 |
+-----------------+---------+

/*
QUEM VENDEU MAIS QUE A O VALOR MEDIO DE FEV
*/

SELECT NOME, FEVEREIRO
FROM VENDEDORES
WHERE FEVEREIRO > (SELECT AVG(FEVEREIRO) FROM VENDEDORES);

+-----------------+-----------+
| NOME            | FEVEREIRO |
+-----------------+-----------+
| Maria Oliveira  |   1450.00 |
| Ana Souza       |   1350.85 |
| Fernanda Lima   |   1400.70 |
| José Almeida    |   1500.00 |
| Juliana Ribeiro |   1440.75 |
+-----------------+-----------+

SELECT ROUND(AVG(FEVEREIRO),2) AS MED_FEV FROM VENDEDORES;

+---------+
| MED_FEV |
+---------+
| 1336.49 |
+---------+