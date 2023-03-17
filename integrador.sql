create database direccion_beneficiario ;
use direccion_beneficiario;

create table direccion(
  idusuario int not null,
   Nombre varchar(10),
   Apellido varchar(10),
   Ciudad varchar(100),
   Direccion varchar(100),
   primary key(idusuario)
);

    
insert into direccion(idusuario,Nombre,Apellido,Ciudad,Direccion)values
(1010,'carlos','ruiz','cartagena','diagonal 26 f sur'),
(1011,'lucas','castro','Bogota','calle 24 este 25 bis'),
(1012,'Camila','usuga','medellin','calle 14 24 este'),
(1013,'constantino','Ramirez','cali','calle 14 este'),
(1014,'carlos','mendez','ibague','carrera 14 m '),
(1015,'mario','orozco','Bogota''calle 24 este 28'),
(1016,'Samantha','Martinez','Bogota','carrera 25 este sur'),
(1017,'jose','rivera','Bogota','calle 57 sur 47 este'),
(1018,'Tatiana','rojas','Bogota','carrera 24 bis 4 este');

DELIMITER $$
CREATE FUNCTION obtener_direccion(calle VARCHAR(100), ciudad VARCHAR(100), codigo_postal VARCHAR(10))
RETURNS VARCHAR(250)
DETERMINISTIC
BEGIN
    DECLARE direccion VARCHAR(250);
    SET direccion = CONCAT(calle, ', ', ciudad, ', ', codigo_postal);
    RETURN direccion;
END$$
DELIMITER ;

SELECT obtener_direccion('Av. cali','bogota' ,'');