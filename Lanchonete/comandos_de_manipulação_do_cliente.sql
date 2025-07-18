DESC cliente;

INSERT INTO cliente (nomeCliente) VALUES("cliente à vista");

INSERT INTO cliente (nomeCliente) VALUES("Márcia Silva"), ("Patrick Pereira");

INSERT INTO cliente (nomeCliente, cpf) VALUES("Roseli Xavier", "023.040.984.13");

UPDATE cliente SET dataNascimento = "1980-02-15" WHERE codCliente = 3;

SELECT c.nomeCliente, 
DATE_FORMAT(c.dataNascimento,"%d/%m/%Y") AS nasce
FROM cliente AS c WHERE c.dataNascimento IS NOT NULL;

CREATE VIEW vi_idadeClientes AS
SELECT c.nomeCliente, date_format(c.dataNascimento,"%d/%m/%Y") AS nasce,
FLOOR(DATEDIFF(CURDATE(),c.dataNascimento)/365) AS idade
FROM cliente AS c WHERE c.dataNascimento IS NOT NULL;

SELECT * FROM cliente;
SELECT * FROM vi_idadeclientes;

CREATE VIEW vi_ClientesExternos AS
SELECT c.nomeCliente, c.endereco, c.bairro, c.cidade, c.cep
FROM cliente AS c WHERE c.cidade != "Machado";

CREATE VIEW vi_dadosClientes AS
SELECT c.nomeCliente, c.cpf,
date_format(c.dataNascimento,"%d/%m/%Y") AS nasce
FROM cliente AS c WHERE c.dataNascimento IS NOT NULL OR c.cpf IS NOT NULL;

CREATE VIEW vi_totalClientes AS 
SELECT COUNT(*) AS "Total de Clientes" FROM cliente AS c;