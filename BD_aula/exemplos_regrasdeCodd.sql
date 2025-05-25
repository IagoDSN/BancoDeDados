#Regra de informações em tabelas
SELECT * FROM professores;
SELECT * FROM turmas;

SELECT nomeProfessor FROM professores
ORDER BY nomeProfessor ASC;

SELECT nomeProfessor FROM professores
ORDER BY nomeProfessor DESC;

# Regra do acesso garantido
# Mostrar apenas turmas de Informática
# LIKE foi usado para aplicar filtro usando %
# % significa qualquer conjunto de caracteres
# NOT LIKE serviu para não mostrar turmas com o
# palavra informação
SELECT * FROM turmas WHERE nomeTurma LIKE "%INFO%"
AND nomeTurma NOT LIKE"%informação%"

SELECT * FROM professores WHERE nomeProfessor
LIKE "%Roberto%";

#Tratamento de valores nulos
SELECT * FROM professores where formacaoProfessor is NULL;
SELECT * FROM professores WHERE 
formacaoProfessor is NOT NULL 
AND nomeProfessor LIKE "%M%";

#Catálogo relacional ativo
DESC professores;
DESC turmas;

#Inserção, exclusão e alteração em BLOCO
INSERT INTO turmas VALUES 
(NULL, "1° Zootecnia", 2025), 
(NULL, "2° Zootecnia", 2024);

UPDATE turmas SET nomeTurma = UPPER(nomeTurma)
WHERE nomeTurma LIKE "%Zootecnia%";

DELETE FROM turmas WHERE nomeTurma LIKE "%agronomia%";

SELECT * FROM turmas;








