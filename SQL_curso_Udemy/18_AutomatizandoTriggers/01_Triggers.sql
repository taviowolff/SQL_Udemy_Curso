/* ENTENDENDO TRIGGERS */

/* ESTRUTURA DE UMA TRIGGER */

CREATE TRIGGER NOME
BEFORE/AFTER INSERT/DELETE/UPDATE ON TABELA
FOR EACH ROW (PARA CADA LINHA)
BEGIN -> INICIO

        QUALQUER COMANDO SQL;

END$ -> FIM

-- LEMBRE DE MUDAR O DELIMITER PARA CONFIGURAR UM TRIGGER

/*
Um trigger em SQL (ou "gatilho", em português) é um tipo de 
objeto que define uma ação que será automaticamente executada 
quando um determinado evento ocorrer em uma tabela. Esses eventos 
podem ser operações de inserção (INSERT), atualização (UPDATE)
ou exclusão (DELETE) de dados.
*/