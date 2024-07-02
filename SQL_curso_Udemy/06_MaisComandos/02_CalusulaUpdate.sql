/* Utilizando o update para atualizar valores */

SELECT NOME, EMAIL
FROM CLIENTE;


/* Esse código seta troca todos os emails */
UPDATE CLIENTE
SET EMAIL = 'LILIA@HOTMAIL.COM';


/* Sempre use o UPDATE juntamente com WHERE para que atualize especificamente
o dado desejado */

UPDATE CLIENTE
SET EMAIL = 'NOVOEMAIL@gmail.com'
WHERE ID = 1;

/* Sempre tomar cuidado com UPDATE, por conta dele pode alterar toda uma coluna de dados */
/* Evite sempre utilizar o UPDATE sem WHERE */

/* UPDATE com duas novas informações */


UPDATE CLIENTE
SET EMAIL = 'NOVOEMAIL@EXEMPLO.COM', NUMERO = 999111777
WHERE ID_CLIENTE = 1;