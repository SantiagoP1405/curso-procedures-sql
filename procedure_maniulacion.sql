USE `jugos_ventas`;
DROP procedure IF EXISTS `manipulacion`;

DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `manipulacion` ()
BEGIN
INSERT INTO tabla_de_productos (CODIGO_DEL_PRODUCTO,NOMBRE_DEL_PRODUCTO,SABOR,TAMANO,ENVASE,PRECIO_DE_LISTA)
     VALUES ('1001001','Sabor Alpino','Mango','700 ml','Botella',7.50),
         ('1001000','Sabor Alpino','Melón','700 ml','Botella',7.50),
         ('1001002','Sabor Alpino','Guanábana','700 ml','Botella',7.50),
         ('1001003','Sabor Alpino','Mandarina','700 ml','Botella',7.50),
         ('1001004','Sabor Alpino','Banana','700 ml','Botella',7.50),
         ('1001005','Sabor Alpino','Asaí','700 ml','Botella',7.50),
         ('1001006','Sabor Alpino','Mango','1 Litro','Botella',7.50),
         ('1001007','Sabor Alpino','Melón','1 Litro','Botella',7.50),
         ('1001008','Sabor Alpino','Guanábana','1 Litro','Botella',7.50),
         ('1001009','Sabor Alpino','Mandarina','1 Litro','Botella',7.50),
         ('1001010','Sabor Alpino','Banana','1 Litro','Botella',7.50),
         ('1001011','Sabor Alpino','Asaí','1 Litro','Botella',7.50);


SELECT * FROM tabla_de_productos WHERE NOMBRE_DEL_PRODUCTO LIKE 'Sabor Alp%';

UPDATE tabla_de_productos SET PRECIO_DE_LISTA= 5 WHERE NOMBRE_DEL_PRODUCTO LIKE 'Sabor Alp%';

SELECT * FROM tabla_de_productos WHERE NOMBRE_DEL_PRODUCTO LIKE 'Sabor Alp%';

DELETE FROM tabla_de_productos WHERE NOMBRE_DEL_PRODUCTO LIKE 'Sabor Alp%';

SELECT * FROM tabla_de_productos WHERE NOMBRE_DEL_PRODUCTO LIKE 'Sabor Alp%';

END$$

CALL manipulacion;

DROP procedure IF EXISTS `incluir_producto`;

DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `incluir_producto` ()
BEGIN
	DECLARE vcodigo VARCHAR(20) DEFAULT '3003001';
    DECLARE vnombre VARCHAR(30) DEFAULT 'Sabor Intenso';
    DECLARE vsabor  VARCHAR(30) DEFAULT 'Tutti Frutti';
    DECLARE vtamano  VARCHAR(30) DEFAULT '700 ml';
    DECLARE venvase  VARCHAR(30) DEFAULT 'Botella PET';
    DECLARE vprecio  DECIMAL(4, 2) DEFAULT 7.25;
	INSERT INTO tabla_de_productos (CODIGO_DEL_PRODUCTO,NOMBRE_DEL_PRODUCTO,SABOR,TAMANO,ENVASE,PRECIO_DE_LISTA)
		VALUES (vcodigo, vnombre, vsabor, vtamano, venvase, vprecio);
END$$

CALL incluir_producto;
SELECT * FROM tabla_de_productos WHERE NOMBRE_DEL_PRODUCTO LIKE 'Sabor In%';