#Relatório geral de categoria
SELECT * FROM categoria;

#Relatório apenas com nomes das categorias
SELECT nomeCategoria FROM categoria;

#Relatório apenas com nomes das categorias usando APELIDOS para a tabela
SELECT c.nomeCategoria FROM categoria AS c;

#Relatório apenas com nomes das categorias EM ORDEM ALFABÉTICA CRESCENTE
SELECT c.nomeCategoria FROM categoria c ORDER BY c.nomeCategoria ASC;

#Relatório apenas com nomes das categorias EM ORDEM ALFABÉTICA DECRESCENTE
SELECT c.nomeCategoria FROM categoria c ORDER BY c.nomeCategoria DESC;

#Inserção de 3 categorias usando o mesmo comando e preenchendo apenas o nomeCategoria
INSERT INTO categoria (nomeCategoria)
VALUES ("Colegas da Faculdade"), ("Colegas de Clube"), ("Comerciais");

#Inserção completa de categoria informando NULL para o código ser automático e "Professores" para o nome
INSERT  categoria VALUES (NULL, "Professores");