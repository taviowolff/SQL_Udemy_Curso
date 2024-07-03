/* Clásula DELETE */

/* sitaxe básica */
DELETE FROM nome_tabela WHERE condicao;

/* DELETE é perigoso como UPDATE, pois ele pode afetar a tabela inteira */

/* Então sempre tenha em mente usar corretamente 
a cláusula WHERE juntamente com os operadores lógicos AND e OR
Mais especificamente com AND pois o OR irá aidicionar mais deleções da tabela*/

/* Exemplo utilizando a tabela de projeto */

DELETE FROM cliente WHERE ID_CLIENTE = 9;