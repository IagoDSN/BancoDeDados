INSERT INTO marca(nomeMarca) VALUES("Fabricação Própria"), ("Coca-Cola"), ("Lacta"), ("Nestlé"), ("Elma Chips");

CREATE VIEW vi_cardapio AS
SELECT p.nomeProduto, m.nomeMarca, c.nomeCategoria, p.precoVenda
FROM categoria AS c
INNER JOIN produto p ON c.codCategoria = codProduto
INNER JOIN marca m ON c.codCategoria = m.codMarca

SELECT * FROM marca;

INSERT INTO produto(nomeProduto, precoVenda, marca_codMarca, categoria_codCategoria)
VALUES("Empada de palmito", 7, 1, 2);

DESC produto;

DELETE FROM marca
WHERE codIngrediente = 5;

UPDATE marca
SET nomeMarca = "Fabricação Própria"
WHERE codMarca = 1;

UPDATE produto
SET nomeProduto = "Coxinha"
WHERE nomeProduto = "Empada de Palmito";

CREATE VIEW vi_totalMarcas AS
SELECT COUNT(*) AS "total de marcas:"
FROM marca;

CREATE VIEW vi_ordenaCategorias AS
SELECT nomeCategoria
FROM categoria
ORDER BY nomeCategoria ASC;