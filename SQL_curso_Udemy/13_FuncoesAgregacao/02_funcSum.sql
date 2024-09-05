-- SE CONECTANDO AO BANCO DE DADOS
USE FACULDADE;

-- SOMANDO O TOTAL DE UM MÊS ESPECÍFICO
SELECT SUM(MARCO) AS TOTAL_MAR FROM VENDEDORES;

+-----------+
| TOTAL_MAR |
+-----------+
|  12804.15 |
+-----------+

-- SOMANDO O TOTAL DE CADA MÊS
SELECT SUM(JANEIRO) AS TOTAL_JAN,
       SUM(MARCO) AS TOTAL_MAR, 
       SUM(FEVEREIRO) AS TOTAL_FEV  
FROM VENDEDORES;

+-----------+-----------+-----------+
| TOTAL_JAN | TOTAL_MAR | TOTAL_FEV |
+-----------+-----------+-----------+
|  12933.85 |  12804.15 |  13364.95 |
+-----------+-----------+-----------+

-- TENTATIVA DE FAZER UMA CONSULTA DO TRIMESTRE
SELECT SELECT SUM(SUM(JANEIRO), SUM(MARCO), SUM(FEVEREIRO)) AS TTL_TRI  
FROM VENDEDORES;
-- ERROR 1064 (42000): You have an error in your SQL syntax; check the manual 
-- that corresponds to your MySQL server version for the right syntax to use near 
-- 'SELECT SUM(SUM(JANEIRO), SUM(MARCO), SUM(FEVEREIRO)) AS TTL_TRI
-- FROM VENDEDORE' at line 1

-- CORREÇÃO APÓS PESQUISA
SELECT 
    SUM(JANEIRO + FEVEREIRO + MARCO) AS TTL_TRI
FROM VENDEDORES;

+----------+
| TTL_TRI  |
+----------+
| 39102.95 |
+----------+

-- VENDAS POR SEXO UTILIZANDO GROUP BY
SELECT 
    SEXO, SUM(JANEIRO + FEVEREIRO + MARCO) AS TRI_SEX
    FROM VENDEDORES
    GROUP BY SEXO;
-- NESTE QUERY MOSTRA O TOTAL DO TRIMESTRE SEPARANDO OS VENDEDORES POR SEXO ('M','F')
+------+----------+
| SEXO | TRI_SEX  |
+------+----------+
| M    | 18724.85 |
| F    | 20378.10 | -- MULHERES VENDERAM MAIS
+------+----------+