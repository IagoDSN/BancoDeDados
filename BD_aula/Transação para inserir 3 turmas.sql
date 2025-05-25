#Transação para inserir 3 turmas
BEGIN;
	SELECT * FROM turmas;
	INSERT INTO turmas VALUES (NULL, "1° Administração", 2025);
	INSERT INTO turmas VALUES (NULL, "2° Administração", 2024);
	INSERT INTO turmas VALUES (NULL, "3° Administração", 2023);
COMMIT;

SELECT * FROM turmas;
