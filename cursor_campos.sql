SELECT * FROM tabla_de_clientes;

USE `jugos_ventas`;
DROP procedure IF EXISTS `cursor_campos`;

DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `cursor_campos` ()
BEGIN
DECLARE finc INT DEFAULT 0;
DECLARE vnombre, vdireccion, vbarrio, vciudad, vestado, vcp VARCHAR(100);
DECLARE c CURSOR FOR SELECT NOMBRE, DIRECCION_1, BARRIO, CIUDAD, ESTADO, CP FROM tabla_de_clientes;
DECLARE CONTINUE HANDLER FOR NOT FOUND
SET finc = 1;
OPEN c;
WHILE finc = 0
DO
FETCH c INTO vnombre, vdireccion, vbarrio, vciudad, vestado, vcp; 
IF finc = 0
THEN SELECT CONCAT(vnombre, ' ', vdireccion, ' ', vbarrio, ' ', vciudad, ' ', vestado, ' ', vcp) AS RESULTADO;
END IF;
END WHILE;
CLOSE c;

END$$

DELIMITER ;

CALL cursor_campos();
