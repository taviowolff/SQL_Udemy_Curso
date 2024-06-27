--Traga os funcionarios que trabalhem
--no departamento de filmes OU no
--departamento de roupas

SELECT departamento , count(idFuncionario) as 'Qtd funcionario'  FROM funcionarios WHERE departamento = 'Roupas' or departamento = 'Filmes' group by departamento;

--O gestor de marketing pediu a lista das funcionarias (AS) = FEMININO que trabalhem no departamento 
--de filmes ou no departamento lar. Ele necessita enviar um email para as colaboradoras
--desses dois setores. OR +  AND *

SELECT nome, departamento, email from funcionarios WHERE (departamento = 'Filmes' or departamento = 'Lar') AND sexo = 'FEMININO';

--Traga os funcionarios do sexo masculino
--ou os funcionarios que trabalhem no setor Jardim

SELECT nome, departamento, sexo FROM funcionarios WHERE sexo = 'MASCULINO' or departamento = 'Jardim';