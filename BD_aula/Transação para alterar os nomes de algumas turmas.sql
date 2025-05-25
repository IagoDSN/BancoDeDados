#Transação para alterar os nomes de algumas turmas
BEGIN;
	SELECT *FROM turmas;
	UPDATE turmas SET nomeTurma = LOWER(nomeTurma)
	WHERE nomeTurma LIKE "1INFO%";
	
	UPDATE turmas SET nomeTurma = LOWER(nomeTurma)
	WHERE nomeTurma LIKE "%Administração%";
COMMIT;
SELECT * FROM turmas;