/* seleção exemplo 1 */
SELECT * FROM produtos;

/* filtrando dados com where e Like */

SELECT nome, sexo FROM CLIENTE WHERE sexo = 'M';

SELECT nome, sexo FROM CLIENTE WHERE sexo = 'F';

SELECT nome, sexo from CLIENTE where endereco = 'RJ'

/* Utilizando Like*/

SELECT nome, sexo from CLIENTE where endereco like 'RJ'

/* Utilizando Like com % -> qualquer coisa*/

SELECT nome, sexo from CLIENTE where endereco like '%RJ%'

SELECT nome, sexo from CLIENTE where endereco like 'RJ%'

SELECT nome, sexo from CLIENTE where endereco like '%RJ%'
