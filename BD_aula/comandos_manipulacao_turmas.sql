INSERT INTO turmas VALUES (NULL, "1INFOA", 2025);
INSERT INTO turmas VALUES (NULL, "1INFOB", 2025);
INSERT INTO turmas VALUES (NULL, "1INFOC", 2025);

DESC turmas;

SELECT * FROM turmas;

INSERT INTO turmas (nomeTurma, anoIngresso) VALUES
("2INFOD", 2024), ("2INFOE", 2024), ("2INFOF", 2024);

INSERT INTO turmas(nomeTurma, anoIngresso) VALUES
("3INFO-G", 2023), ("3INFO-H",2023);

UPDATE turmas SET nomeTurma="3INFOG" WHERE codTurma=7;
UPDATE turmas SET nomeTurma="3INFOH" WHERE codTurma=8;

INSERT INTO turmas VALUES (NULL, "teste", 2020);

DELETE FROM turmas WHERE codturma=9;

#1- Mostrar todas as turmas em ordem decrescente pelo ano de ingresso
SELECT * FROM turmas ORDER BY anoIngresso DESC;

#2- Mostrar todas as turmas em ordem alfabética crescente
SELECT nomeTurma FROM turmas ORDER BY nomeTurma ASC;

#3- Listar todos os dados das turmas cujo código seja 2 ou 4 ou 6
SELECT * FROM turmas WHERE codTurma = 2 OR codTurma = 4 OR codTurma = 6;
SELECT * FROM turmas WHERE codTurma IN(2,4,6);

#4- Selecionar somente os nomes das turmas que ingressaram em 2024
SELECT * FROM turmas WHERE anoIngresso = 2024;