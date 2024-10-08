CREATE DATABASE FACULDADE;

CREATE TABLE CURSOS (
    ID_CURSO INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR (30) NOT NULL,
    HORAS INT(3) NOT NULL,
    PRECO FLOAT(10.2)
);

INSERT INTO CURSOS VALUES (NULL, 'JAVA', 35, 1000.00);
INSERT INTO CURSOS VALUES (NULL, 'PYTHON', 40, 1200.00);

SELECT * FROM CURSOS;

DELIMITER //

CREATE PROCEDURE CAD_CURSO (P_NOME VARCHAR(30),
                            P_HORAS INT(3),
                            P_PRECO FLOAT(10.2))
BEGIN

    INSERT INTO CURSOS VALUES (NULL, P_NOME, P_HORAS, P_PRECO);

END
//

DELIMITER ;

CALL CAD_CURSO('EXCEL', 30, 900.00);

+----------+--------+-------+-------+
| ID_CURSO | NOME   | HORAS | PRECO |
+----------+--------+-------+-------+
|        1 | JAVA   |    35 |  1000 |
|        2 | PYTHON |    40 |  1200 |
|        3 | EXCEL  |    30 |   900 |
+----------+--------+-------+-------+

-- DEVER -> CRIAR UMA PROCEDURE PARA CONSULTAR CURSOS

-- ALTERAR O DELIMITER
DELIMITER //

-- CRIANDO A PROCEDURE QUE SÓ MOSTRA NOME, PREÇO E HORAS DO CURSO
CREATE PROCEDURE DESC_CURSO()
BEGIN
    SELECT NOME, PRECO, HORAS FROM CURSOS;
END
//

-- VOLTAR O DELIMITER
DELIMITER ;

-- FAZER A CALL
CALL DESC_CURSO();

-- PARA EXCLUIR UMA PROCEDURE
-- SINTAXE
DROP PROCEDURE IF EXISTS nome_procedure;

-- ESSA PROCEDURE APRESENTA UM ERRO EM RELAÇÃO A SUA TABELA 
-- O NOME DA COLUNA É "PRECO" E NÃO "VALOR"
CREATE PROCEDURE P_IDCURSO(IDCURSO INT)
BEGIN 
    SELECT NOME, HORAS, VALOR FROM CURSOS
    WHERE ID_CURSO = IDCURSO;
END
//

-- PARA APAGAR O ERRO
DROP PROCEDURE IF EXISTS P_IDCURSO;

-- CORRIGINDO COM UMA NOVA PROCEDURE
CREATE PROCEDURE P_IDCURSO(IN IDCURSO INT)
BEGIN 
    SELECT NOME, HORAS, PRECO FROM CURSOS
    WHERE ID_CURSO = IDCURSO;
END
//

-- CHAMANDO A PROCEDURE COM UM PARAMETRO INT
CALL P_IDCURSO(2);
-- RESULTADO
+--------+-------+-------+
| NOME   | HORAS | PRECO |
+--------+-------+-------+
| PYTHON |    40 |  1200 |
+--------+-------+-------+