#Comandos de Manipulação dos Cargos
DESC cargo;

insert INTO cargo(nomeCargo, salarioInicial)
VALUES("Gerente", 4500.75);

insert INTO cargo(nomeCargo, salarioInicial)
VALUES("Balconista", 1804);

INSERT INTO cargo VALUES(NULL, "Auxiliar de limpeza", 900.56, "Limpeza da lanchonete e áreas afins.");

UPDATE cargo SET funcoes = "Realizar o processo da venda" WHERE codCargo = 2;

SELECT * FROM cargo WHERE funcoes IS NULL;

UPDATE cargo SET funcoes = "Administrar funcionários e controlar o estoque" WHERE codCargo = 1;

#Mostrar apenas o nome e o salário (com 2 casas decimais)
SELECT c.nomeCargo, format(c.salarioInicial,2) AS salarioInicial FROM cargo AS c;

DELETE FROM cargo WHERE codCargo=4;

SELECT * FROM cargo; 