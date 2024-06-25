/* count(*), GROUP BY*/

/* CONTANDO OS REGISTROS DE UMA TABELA */
SELECT COUNT(*) FROM clientes;

/* é muito utilizado o COUNT com GROUP BY */
SELECT sexo, COUNT(*) FROM clientes GROUP BY sexo;

