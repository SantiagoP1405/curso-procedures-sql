USE `jugos_ventas`;
DROP procedure IF EXISTS `precio_producto_case`;

DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `precio_producto_case` (vcodigo VARCHAR(20))
BEGIN
DECLARE vresultado VARCHAR(50);
DECLARE vprecio FLOAT;
SELECT PRECIO_DE_LISTA into vprecio FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = vcodigo;

CASE
WHEN vprecio >= 12 THEN SET vresultado = 'Producto caro';
WHEN vprecio >= 7 AND vprecio < 12 THEN SET vresultado = 'Producto accesible';
WHEN vprecio < 7 THEN SET vresultado = 'Producto barato';
END CASE;

SELECT vresultado;
END$$

DELIMITER ;
CALL precio_producto_case('1000800');