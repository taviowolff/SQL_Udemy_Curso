/* Operadores lógicos em sql */
-- AND, OR, NOT

-- AND - E
-- exemplo  
SELECT * FROM livros WHERE Sexo_autor = 'M' AND Estado_editora = 'RJ';

-- OR - OU
-- exemplo
SELECT * FROM livros WHERE Sexo_autor = 'M' OR Estado_editora = 'RJ';

-- NOT - NÃO
-- exemplo
SELECT * FROM livros WHERE NOT Sexo_autor = 'M';

-- AND e OR
-- exemplo
SELECT * FROM livros WHERE Sexo_autor = 'M' AND Estado_editora = 'RJ' OR Estado_editora = 'SP';
