USE `jugos_ventas`;
DROP procedure IF EXISTS `hola_mundo`;

DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `hola_mundo` ()
BEGIN
SELECT "Hola Mundo";
END$$

DROP procedure IF EXISTS `muestra_numero`;

DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `muestra_numero` ()
BEGIN
SELECT(9+5)*2 AS RESULTADO;
END$$

DELIMITER ;

DROP procedure IF EXISTS `concatenar`;

DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `concatenar` ()
BEGIN
SELECT CONCAT("hOLA", " ", " MUNDO,", " ", "¿Cómo", " ", "estás?-") AS MENSAJE;
END$$

DELIMITER ;

CALL hola_mundo;  #Manda a llamar el procedure

CALL muestra_numero;

CALL concatenar;
