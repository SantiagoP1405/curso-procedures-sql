# EJEMPLO DE CREACIÓN DE UN PROCEDURE
USE `jugos_ventas`;
DROP procedure IF EXISTS `no_hace_nada`;

DELIMITER $$ # A partir de aquí es que se considera el procedimiento
USE `jugos_ventas`$$
CREATE PROCEDURE `no_hace_nada` ()	
BEGIN
# AQUÍ VAN LOS COMANDOS
END$$

DELIMITER ;



