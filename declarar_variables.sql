USE `jugos_ventas`;
DROP procedure IF EXISTS `exhibir_variable`;

DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `exhibir_variable` ()
BEGIN
DECLARE texto CHAR(25) DEFAULT 'Hola mundo, soy yo';
SELECT texto;
END$$

CALL exhibir_variable;

DROP procedure IF EXISTS `declare_variables`;

DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `declare_variables` ()
BEGIN
DECLARE v VARCHAR(50) DEFAULT 'Variable de caracteres variables ';
DECLARE i INTEGER DEFAULT 564;
DECLARE d DECIMAL(6, 3) DEFAULT 897.64;
DECLARE f DATE DEFAULT CURRENT_DATE();
DECLARE t TIMESTAMP DEFAULT CURRENT_TIMESTAMP();
SELECT v, i, d, f, t;
END$$

CALL declare_variables;

DROP procedure IF EXISTS `cambiar_valores`;

DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `cambiar_valores` ()
BEGIN
DECLARE numero INTEGER DEFAULT 987;	
SELECT numero;
SET numero = 14;
SELECT numero;
END$$

CALL cambiar_valores;
