CREATE TABLE tb_looping (ID INT);
DROP TABLE tb_looping;

USE `jugos_ventas`;
DROP procedure IF EXISTS `looping`;

DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `looping` (vinicial INT, vfinal INT)
BEGIN
DECLARE vcontador INT;
SET vcontador = vinicial;
WHILE vcontador <= vfinal
DO 
INSERT INTO tb_looping VALUES(vcontador);
SET vcontador = vcontador+1;
END WHILE;
SELECT * FROM tb_looping;
END$$

DELIMITER ;

CALL looping(1,10);
