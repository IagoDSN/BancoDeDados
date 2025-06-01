/*Criar uma transação que insira 4 categorias*/
BEGIN;
		INSERT INTO categorias VALUES(NULL, "Familiares");
		INSERT INTO categorias VALUES(NULL, "Amigos");
		INSERT INTO categorias VALUES(NULL, "Colegas de Classe");
		INSERT INTO categorias VALUES(NULL, "Comerciais");
COMMIT;
SELECT * FROM categorias;

#Selecionar os nomes de cada contato, mostrando também o nome
#de qual categoria cada um pertence
SELECT co.nomeContato, ca.nome
FROM contatos AS co
INNER JOIN categorias AS ca 
ON ca.codCategoria = co.categorias_codCategoria

#Selecionar os nomes e os telefones dos contatos que passaram essa informação,
#ou seja, o telefone foi preenchido
SELECT nomeContato, telefone FROM contatos WHERE telefone IS not NULL;

#Apagar, de forma geral, os contatos que começam com Disk
DELETE FROM contatos WHERE nomeContato LIKE "Disk%";
SELECT * FROM contatos;

#Atualizar os nomes de todas as categorias para que sejam escritas
#com letras maiúsculas
UPDATE categorias SET nome = ucase(nome);
SELECT * from categorias;



