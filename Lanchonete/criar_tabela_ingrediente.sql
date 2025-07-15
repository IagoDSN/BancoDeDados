CREATE TABLE ingrediente (
	codIngrediente INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	nomeIngrediente VARCHAR (100) NOT NULL,
	principaisUsos VARCHAR (2000),
	medidaCompra VARCHAR (50),
	estoqueIngrediente float
);