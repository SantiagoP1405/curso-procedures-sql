SELECT * FROM tabla_de_clientes;

USE `jugos_ventas`;
DROP procedure IF EXISTS `edad_clientes`;

DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `edad_clientes` (vdni VARCHAR(20))
BEGIN
DECLARE vresultado VARCHAR(50);
DECLARE vfecha DATE;
SELECT FECHA_DE_NACIMIENTO INTO vfecha FROM tabla_de_clientes
WHERE DNI = vdni;

IF
vfecha < '19950101'
THEN
SET vresultado = 'Cliente viejo';
ELSE
SET vresultado = 'Cliente jóven';
END IF;
SELECT vresultado;
END$$

DELIMITER ;

CALL edad_clientes('3623344710');