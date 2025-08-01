/*CREACION*/
create database centrocomercial;
USE CentroComercial;
CREATE TABLE tbl_tipo_doc (
	id_tipo_doc INT AUTO_INCREMENT PRIMARY KEY,
    nombre_doc VARCHAR(50),
    siglas VARCHAR(15)
);
CREATE TABLE tbl_int_horaria(
	id_int_horaria INT AUTO_INCREMENT PRIMARY KEY,
    horas VARCHAR(12)
);
CREATE TABLE tbl_tienda (
	id_tienda INT auto_increment PRIMARY KEY,
    nombre_tienda VARCHAR (80)
);
CREATE TABLE tbl_entrada(
	id_entrada INT AUTO_INCREMENT PRIMARY KEY,
    nombre_entrada VARCHAR(30)
);
CREATE TABLE tbl_tipo_cargo(
	id_tipo_cargo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_cargo VARCHAR(50)
);
CREATE TABLE tbl_cargo(
	id_cargo INT AUTO_INCREMENT PRIMARY KEY,
	fk_id_tipo_cargo INT,
    FOREIGN KEY (fk_id_tipo_cargo) REFERENCES tbl_tipo_cargo (id_tipo_cargo),
    fk_id_tienda INT,
    FOREIGN KEY (fk_id_tienda) REFERENCES tbl_tienda (id_tienda),
    fk_id_int_horaria INT,
    FOREIGN KEY (fk_id_int_horaria) REFERENCES tbl_int_horaria (id_int_horaria)
);

CREATE TABLE tbl_usuario(
	id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    fk_id_tipo_doc INT,
    FOREIGN KEY (fk_id_tipo_doc) REFERENCES tbl_tipo_doc (id_tipo_doc),
    fk_id_cargo INT,
    FOREIGN KEY (fk_id_cargo) REFERENCES tbl_cargo (id_cargo),
    nombre_completo VARCHAR(200),
    edad INT,
    genero CHAR,
    num_doc INT,
	activo BOOLEAN
);
CREATE TABLE tbl_registro_ent_sal(
	id_ent_sal INT AUTO_INCREMENT PRIMARY KEY,
    fk_id_usuario INT,
    FOREIGN KEY (fk_id_usuario) REFERENCES tbl_usuario(id_usuario),
    fk_id_tienda INT, 
    FOREIGN KEY (fk_id_tienda) REFERENCES tbl_tienda(id_tienda),
    fk_id_entrada INT,
    FOREIGN KEY (fk_id_entrada) REFERENCES tbl_entrada(id_entrada),
    fecha_ing DATETIME,
    fecha_sal DATETIME
);







