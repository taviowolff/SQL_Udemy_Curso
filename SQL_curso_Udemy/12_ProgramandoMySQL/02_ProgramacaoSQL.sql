/* STORAGE PROCEDURES*/
/*
Stored Procedures (Procedures Armazenadas) são blocos de código SQL que são armazenados no banco de dados 
e podem ser executados repetidamente. Eles permitem que você agrupe um conjunto de operações SQL e as 
execute como uma única unidade, melhorando a eficiência e a reutilização do código.

Reutilização: Uma vez criada, uma stored procedure pode ser chamada múltiplas vezes em diferentes partes 
do sistema.

Manutenção Simplificada: Alterações no código SQL podem ser feitas na stored procedure sem alterar o 
código da aplicação.

Segurança: As permissões podem ser configuradas para que apenas usuários autorizados possam executar a 
stored procedure.

Performance: Como as stored procedures são pré-compiladas, elas podem oferecer melhor performance em 
comparação a consultas SQL ad-hoc.
*/

SELECT 'WOLFF';

-- DEFININDO O DELIMITER PARA QUE SEJA //
DELIMITER //

-- ESSES SÃO EXEMPLOS DE UMA CRIACAO DE PROCEDURE

CREATE PROCEDURE NOME()
BEGIN

    QUALQUER PROGRAMACAO;

END
//

CREATE PROCEDURE NOME_EMPRESA()
BEGIN   
    SELECT 'UNIVERSIDADE DOS DADOS' AS EMPRESA;

END
//

CALL NOME_EMPRESA()//
-- 

-- CRIACAO DE UMA PROCEDURE COM UMA FUNCAO DE SOMA
CREATE PROCEDURE SOMA(NUME1 INT, NUME2 INT)
BEGIN
    SELECT NUME1 + NUME2 AS SOMA;

END
//

CALL SOMA(120,50)//
-- AQUI É A CRIAÇÃO DO CALL SENDO PASSADO OS DOIS PARAMETROS NECESSARIOS PARA A FAZER A FUNÇAO FUNCIONAR
+------+
| SOMA |
+------+
|  170 |
+------+
-- RETORNO