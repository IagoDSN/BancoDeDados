#Criar o BD revisao2E
CREATE DATABASE revisao2E;

#Criar a tabela alunos
CREATE TABLE alunos(
id INT PRIMARY KEY,
nome VARCHAR(300)
);

#Exibir o catálogo relacional ativo da tabela alunos
DESC alunos;

#Graficamente, alteramos o id para ser auto_increment
#e desmarcamos "Permitir NULL" do nome.

#Inserção em bloco(sem transação)
INSERT INTO alunos(nome) VALUES("Luiz Inacio da Silva"), 
("Dilma Souza"), ("Laércio Bolsonaro");

SELECT * FROM alunos;

#Inserção em bloco (COM transação)
BEGIN;
INSERT INTO alunos(nome) VALUES("Geraldo Nunes");
INSERT INTO alunos(nome) VALUES("MikaMoto yuji");
INSERT INTO alunos(nome) VALUES("Juju Alvez");
COMMIT;
SELECT * FROM alunos;

#Criar tabela NOTAS
CREATE TABLE notas(
idAluno INT,
nota DECIMAL(3,1)
);

#Inserimos graficamente a nota para um aluno
#Criar uum relatório que mostre o id do aluno, seu nome e nota
SELECT a.id, a.nome , n.nota
FROM alunos AS a 
INNER JOIN notas AS n
ON a.id = n.idAluno;

