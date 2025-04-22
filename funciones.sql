SET GLOBAL log_bin_trust_function_creators = 1;

USE `jugos_ventas`;
DROP function IF EXISTS `f_define_sabor`;

DELIMITER $$
USE `jugos_ventas`$$
CREATE FUNCTION `f_define_sabor` (vsabor VARCHAR(40))
RETURNS  VARCHAR(40)
BEGIN
DECLARE vretorno VARCHAR(40) DEFAULT "";
CASE vsabor
WHEN 'Maracuyá' THEN SET vretorno = 'Rico';
WHEN 'Limón' THEN SET vretorno = 'Rico';
WHEN 'Uva' THEN SET vretorno = 'Rico';
WHEN 'Sandía' THEN SET vretorno = 'Normal';
WHEN 'Mango' THEN SET vretorno = 'Normal';
ELSE SET vretorno = "Común";
END CASE;
RETURN vretorno;
END$$

DELIMITER ;

SELECT f_define_sabor('Maracuyá');

SELECT NOMBRE_DEL_PRODUCTO, SABOR, f_define_sabor(SABOR) AS TIPO FROM tabla_de_productos;  

SELECT NOMBRE_DEL_PRODUCTO, SABOR FROM tabla_de_productos WHERE f_define_sabor(SABOR) = 'Rico';