/* Em SQL existem regras para as questões de obrigatoriedade
e cardinalidade dos dados dispostos em um banco de dados
*/

/*
1,1 (obrigatório/tendo apenas um dado relacional)
1,n (obrigatório/mais de um dado relacional)
0,n (não obrigatório/mais de dado relacional)
0,1 (não obirgatório/até um dado relacional)
*/

CREATE TABLE Telfone (
    IDtelefone INT PRIMARY KEY,
    numero VARCHAR(20),
    tipo VARCHAR(20),
    FOREIGN KEY (IDcliente) REFERENCES(telefone)
)