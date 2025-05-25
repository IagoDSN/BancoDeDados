#Adicionar a tabela
INSERT INTO turmas VALUES (NULL, "1SI", 2025);
INSERT INTO turmas VALUES (NULL, "2SI", 2025);

#ou

INSERT INTO turmas VALUES (NULL, "1SI", 2025), (NULL, "2SI", 2025);

#Selecionar tabela
SELECT * FROM turmas;

#Atualizar
UPDATE turmas SET anoIngresso=2024 WHERE codTurma=1;

#Deletar linha
DELETE FROM turmas WHERE codTurma=2;
