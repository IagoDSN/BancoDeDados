SHOW DATABASES;          
USE aula2E;              
SHOW TABLES;             
DESC professores;        
                         
#Inserir uma professora informando sua formação
#Cristina Almeida        
#Ciência da computação   
                         
INSERT INTO professores (nomeProfessor, formacaoProfessor)
VALUES ("Cristina Almeida", "Ciência da Computação");
                         
#Mostrar todos os professores cadastrados
SELECT * FROM professores;
                         
#Inserir 3 professores do Ensino Médio informando apenas os nomes
#João Roberto Caixeta    
#Vlander Verdades        
#Marcelo Pereira         
                         
INSERT INTO professores (nomeProfessor)
VALUES ("João Roberto"), ("Vlander Verdades"), ("Marcelo Pereira");
SELECT * FROM professores;
                         
#Atualizar a formação de um professor
#Marcelo Pereira de Educação Física
                         
UPDATE professores SET formacaoProfessor = "Educação Física"
WHERE codProfessor = 5;

#Mostrar apenas os professores cuja formação não foi preenchida
SELECT * FROM professores WHERE formacaoProfessor is NULL;

#Selecionar somente os nomes dos professores cuja formação já foi preenchida

SELECT * FROM professores WHERE formacaoProfessor is NOT NULL;