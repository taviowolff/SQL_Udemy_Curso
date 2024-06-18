/* Sintaxe básica para inserção de dados em uma tabela */
/* INSERT INTO tabela... (); */

/* FORMA 1 - OMITINDO AS COLUNAS */

INSERT INTO cliente VALUES (1, 'João', 'M', 99922244146, 'joao@gmail.com', '22923110', 'MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ');

INSERT INTO cliente VALUES (2, 'Maria', 'F', 99922244147, 'maria@gmail.com', '22923111', 'MAIA LACERDA - UFOP - RIO DE JANEIRO - RJ');

INSERT INTO cliente VALUES (3, 'José', 'M', 99922244148, 'jose@gmail.com', '22923112', 'MAIA LACERDA - UFRJ - RIO DE JANEIRO - RJ');

/* FORMA 2 - ESPECIFICANDO AS COLUNAS */
INSERT INTO cliente (id_cliente, nome, sexo, CPF, email, telefone, endereco) VALUES (4, 'Ana', 'F', 99922244149, 'ana@gmail.com', '22923113', 'MAIA LACERDA - UFF - RIO DE JANEIRO - RJ');

/* FORMA 3 - INSERT COMPACTO - SOMENTE SQL */
INSERT INTO cliente VALUES (5, 'Pedro', 'M', 99922244150, 'pedro@gmail.com', '22923114', 'MAIA LACERDA - UFRJ - RIO DE JANEIRO - RJ'),
                           (6, 'Paula', 'F', 99922244151, 'paula@gmail.com', '22923115', 'MAIA LACERDA - UFF - RIO DE JANEIRO - RJ');


INSERT INTO cliente VALUES (7, 'gustavo', 'M', 99999999999, 'gustavo@gmail.com', '22923109', 'GOIABEIRAS - UFES - ESPIRITO SANTO - ES');