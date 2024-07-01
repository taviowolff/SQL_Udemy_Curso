/* Filtrando valores NULOS (NULL) */

SELECT nome, sexo, endereco
FROM cliente
WHERE email = NULL;

SELECT nome, sexo, endereco
FROM cliente
WHERE email IS NULL;

SELECT nome, sexo, endereco
FROM cliente
WHERE email IS NOT NULL;  