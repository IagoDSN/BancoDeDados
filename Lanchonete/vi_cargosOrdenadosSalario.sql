CREATE VIEW vi_cargosOrdenadosSalario AS
SELECT nomeCargo, salarioInicial FROM cargo ORDER BY SalarioInicial;