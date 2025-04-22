SELECT * FROM tabla_de_productos;

SELECT PRECIO_DE_LISTA FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = '1000800';

USE `jugos_ventas`;
DROP procedure IF EXISTS `precio_producto`;

DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `precio_producto` (vcodigo VARCHAR(20))
BEGIN
DECLARE vresultado VARCHAR(50);
DECLARE vprecio FLOAT;
SELECT PRECIO_DE_LISTA into vprecio FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = vcodigo;
IF
vprecio >= 12
THEN
SET vresultado = 'Producto caro';
ELSEIF
vprecio >= 7 AND vprecio < 12 
THEN
SET vresultado = 'Producto accesible';
ELSEIF
vprecio < 7 
THEN
SET vresultado = 'Producto barato';
END IF;
SELECT vresultado;
END$$

DELIMITER ;

CALL precio_producto('1000800');