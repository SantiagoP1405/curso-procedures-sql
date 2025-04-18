DROP procedure IF EXISTS `incluir_producto_parametros`;

DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `incluir_producto_parametros` (vcodigo VARCHAR(20), vnombre VARCHAR(30),
vsabor  VARCHAR(30), vtamano  VARCHAR(30), venvase  VARCHAR(30), vprecio  DECIMAL(4, 2))
BEGIN
	DECLARE mensaje VARCHAR(40);
    DECLARE EXIT HANDLER FOR 1062
    BEGIN
		SET mensaje = "Producto duplicado.";
		SELECT mensaje;
    END;
	INSERT INTO tabla_de_productos (CODIGO_DEL_PRODUCTO,NOMBRE_DEL_PRODUCTO,SABOR,TAMANO,ENVASE,PRECIO_DE_LISTA)
		VALUES (vcodigo, vnombre, vsabor, vtamano, venvase, vprecio);
	SET mensaje = "Producto incluido con éxito.";
    SELECT mensaje;
END$$

CALL incluir_producto_parametros('1000800', 'Sabor del Mar', '700 ml', 'Naranja', 'Botella de vidrio', '2.25');

SELECT * FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = '1000800';

CALL incluir_producto_parametros('1000801', 'Sabor del Mar', '700 ml', 'Naranja', 'Botella de vidrio', '3.25');