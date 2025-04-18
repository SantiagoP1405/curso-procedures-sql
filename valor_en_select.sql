SELECT * FROM tabla_de_productos;

USE `jugos_ventas`;
DROP procedure IF EXISTS `mostrar_sabor`;

DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `mostrar_sabor` (vcodigo VARCHAR(15))
BEGIN
DECLARE vsabor VARCHAR(15);
SELECT SABOR INTO vsabor FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = vcodigo;
SELECT vsabor;
END$$

DELIMITER ;

CALL mostrar_sabor("1040107");