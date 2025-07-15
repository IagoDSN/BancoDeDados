CREATE VIEW VIEW vi_ingredientes_estoque_baixo AS
SELECT nomeIngrediente, medidaCompra, estoqueIngrediente
FROM ingredientes
WHERE estoqueIngredientes < 30;