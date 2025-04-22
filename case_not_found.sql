USE `jugos_ventas`;
DROP procedure IF EXISTS `define_sabor_con_error`;

DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `define_sabor_con_error` (vcodigo VARCHAR(20))
BEGIN
DECLARE vsabor VARCHAR(20);
DECLARE merror VARCHAR(50);
DECLARE CONTINUE HANDLER FOR 1339 
SET merror = 'Sabor no definido';
SELECT SABOR INTO vsabor FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = vcodigo;
CASE vsabor
WHEN 'Maracuyá' THEN SELECT 'Rico';
WHEN 'Limón' THEN SELECT 'Rico';
WHEN 'Uva' THEN SELECT 'Rico';
WHEN 'Sandía' THEN SELECT 'Normal';
WHEN 'Mango' THEN SELECT 'Normal';

END CASE;
SELECT merror;
END$$

DELIMITER ;

CALL define_sabor_con_error('1000800');