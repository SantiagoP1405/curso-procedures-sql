USE `jugos_ventas`;
DROP procedure IF EXISTS `cursor_1`;

DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `cursor_1` ()
BEGIN
DECLARE finc INT DEFAULT 0;
DECLARE vnombre VARCHAR(50);
DECLARE c CURSOR FOR SELECT NOMBRE FROM tabla_de_clientes;
DECLARE CONTINUE HANDLER FOR NOT FOUND
SET finc = 1;
OPEN c;
WHILE finc = 0
DO
FETCH c INTO vnombre; 
IF finc = 0
THEN SELECT vnombre;
END IF;
END WHILE;
CLOSE c;
END$$

DELIMITER ;

CALL cursor_1();