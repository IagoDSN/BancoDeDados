CREATE VIEW vi_ingredientes_bolos AS
SELECT nomeIngrediente
FROM ingredientes
WHERE tipoUso ='bolo';