-- After, before, insert, delete ou Update?
-- os eventos de um trigger

CREATE TRIGGER NOME_TRIGGER
AFTER/BEFORE INSERT/DELETE/UPDATE ON TABELA
FOR EACH ROW
BEGIN

    INSERT INTO TABELA VALUES (NULL, OLD.VALUE, OLD.VALUE2);

END 
$

-- AFTER - PARA FAZER ALGUMA AÇÃO APÓS TER ACONTECIDO ALGO 
-- BEFORE - ANTES DE TAL TABELA FOR MODIFICADA O GATILHO FAZ A AÇÃO


