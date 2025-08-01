CREATE DATABASE prueba_base_de_datos;
Use prueba_base_de_datos;
CREATE TABLE usuario (
	id_usuario int primary key auto_increment ,
    nombre_completo varchar(100) not null,
    correo varchar(80) not null,
    telefono int
);
CREATE TABLE historial (
	id_historial int primary key auto_increment ,
    nombre varchar(100) not null,
    accion varchar(15),
    fecha datetime
);

DELIMITER //
CREATE procedure guradarUsuario(
	in _id_usuario int, 
    in _nombre_completo varchar(100), 
    in _correo varchar(80), 
    in _telefono INT
    )
    BEGIN 
		INSERT INTO usuario (id_usuario, nombre_completo, correo, telefono)
        VALUES(null, _nombre_completo, _correo, _telefono);
        
        INSERT INTO historial(id_historial, nombre, accion, fecha)
        VALUES(null, _nombre_completo,"guardado", NOW());
	END;
    
DELIMITER //
CREATE procedure eliminarUsuario(
	in _id_usuario int, 
    in _nombre_completo varchar(100)
    )
BEGIN 
	DELETE FROM usuario WHERE id_usuario = _id_usuario;
	
	INSERT INTO historial(id_historial, nombre, accion, fecha)
	VALUES(null, _nombre_completo,'eliminado', NOW());
END//

    
DELIMITER //
CREATE procedure actualizarUsuario(
	in _id_usuario int, 
    in _nombre_completo varchar(100), 
    in _correo varchar(80), 
    in _telefono INT
    )
BEGIN 
	UPDATE usuario
    SET nombre_completo = _nombre_completo, correo = _correo, telefono = _telefono
	where id_usuario = _id_usuario;
        
	INSERT INTO historial(id_historial, nombre, accion, fecha)
	VALUES(null, _nombre_completo,"Actualizado", NOW());
END//
CALL guardarUsuario(1, "JULIAN GALEANO", "JULIANKAN8522@GMAIL.COM", 304453499);
CALL actualizarUsuario(2, "JULIAN GARCIA", "JULIANKAN8522@GMAIL.COM", 304453499);
CALL eliminarusuario(1 ,"JULIAN GARCIA")

SeLECT * FROM historial
select * from usuario
