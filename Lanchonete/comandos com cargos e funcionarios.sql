DESC funcionario;

INSERT INTO funcionario(nomeFuncionario, cpf, dataNascimento, telefones, cargo_codCargo)
VALUES("Iago Nunes", "134.372.896-81",
"1969-04-12" "(35)97432-5394", 1);

CREATE VIEW vi_nascimentoFuncionarios as
SELECT f.nomeFuncionario, f.cpf,
DATE_FORMAT(f.dataNascimento,"%d/%m/%Y") AS nascimento
FROM funcionario AS f;

SELECT * FROM funcionario;

/*Criar uma view que mostre o nome do funcionário,
sua data de nascimento formatada e cálculo da sua idade*/
CREATE VIEW vi_idadeFuncionarios AS 
SELECT CURDATE();
SELECT f.nomeFuncionario, date_format(f.dataNascimento,"%d/%m/%Y") AS nascimento,
FLOOR(DATEDIFF(CURDATE(),f.dataNascimento)/365)
FROM funcionario AS f;

/*Gerar uma tabela virtual contendo o código do funcionário,
seu CPF, seu nome e o nome do cargo que desempenha*/
SELECT f.codFuncionario, f.cpf, f.nomeFuncionario, c.nomeCargo
FROM funcionario AS f INNER JOIN cargo AS c
ON f.cargo_codCargo = c.codCargo
