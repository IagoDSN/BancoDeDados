delimiter //
CREATE PROCEDURE proc_HelloWorld()
BEGIN
	SELECT "Hello, World!" AS Mensagem;
END //

delimiter ;

DROP PROCEDURE proc_HelloWorld;
CALL proc_HelloWorld;