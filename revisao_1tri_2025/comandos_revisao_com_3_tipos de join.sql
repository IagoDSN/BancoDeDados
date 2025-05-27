BEGIN;
	INSERT INTO alunos VALUES(NULL, "Karla Silva");
	INSERT INTO alunos VALUES(NULL, "André Telles");
	INSERT INTO alunos VALUES(NULL, "Roseli Pereira");
	INSERT INTO alunos VALUES(NULL, "Márcio Teixeira");
COMMIT;

SELECT * FROM alunos;


SELECT a.nome, n.nota
FROM alunos AS a INNER JOIN notas AS n
ON a.id = n.alunos_id;

#Exibição dos dados da tabela à Esquerda
#Neste caso =  ALUNO
SELECT a.nome, n.nota
FROM alunos AS a LEFT JOIN notas AS n
ON a.id = n.alunos_id;

#Exibição dos dados da tabela à Direita
#Neste caso =  NOTAs
SELECT a.nome, n.nota
FROM alunos AS a RIGHT JOIN notas AS n
ON a.id = n.alunos_id;