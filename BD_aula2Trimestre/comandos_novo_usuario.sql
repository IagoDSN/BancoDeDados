SELECT * FROM alunos AS a
INNER JOIN notas AS n
ON a.id = n.idAluno;

UPDATE alunos SET nome = "Alvaro Freitas" WHERE id = 1; SELECT * FROM alunos;