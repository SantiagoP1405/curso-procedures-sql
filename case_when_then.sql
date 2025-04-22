# SELECT SABOR FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = 
 SELECT * FROM tabla_de_productos;
 SELECT SABOR FROM tabla_de_productos group by sabor;
USE `jugos_ventas`;
DROP procedure IF EXISTS `define_sabor`;

DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `define_sabor` (vcodigo VARCHAR(20))
BEGIN
DECLARE vsabor VARCHAR(20);
SELECT SABOR INTO vsabor FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = vcodigo;
CASE vsabor
WHEN 'Maracuyá' THEN SELECT 'Rico';
WHEN 'Limón' THEN SELECT 'Rico';
WHEN 'Uva' THEN SELECT 'Rico';
WHEN 'Sandía' THEN SELECT 'Normal';
WHEN 'Mango' THEN SELECT 'Normal';
ELSE SELECT 'jugos comunes';
END CASE;
END$$

DELIMITER ;

CALL define_sabor('1004327');