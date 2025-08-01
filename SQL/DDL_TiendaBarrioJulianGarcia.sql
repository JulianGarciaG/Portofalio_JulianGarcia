Create DATABASE TiendaBarrio;
Use TiendaBarrio;
CREATE TABLE tbl_categoria_producto(
	id_categoria_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre_categoria Varchar(30) NOT NULL
);
CREATE TABLE tbl_horario(
	id_horario INT PRIMARY KEY AUTO_INCREMENT,
    nombre_horario  VARCHAR(20) NOT NULL,
    HORAS INT NOT NULL
);
CREATE TABLE tbl_tipo_doc(
	id_tipo_doc INT PRIMARY KEY AUTO_INCREMENT,
    nombre_doc VARCHAR(45) NOT NULL,
    siglas VARCHAR (8) NOT NULL
);
CREATE TABLE tbl_iva(
	id_iva INT PRIMARY KEY AUTO_INCREMENT,
    porcentaje_iva DECIMAL NOT NULL
);
CREATE TABLE tbl_proveedor(
	id_proveedor INT PRIMARY KEY AUTO_INCREMENT,
	nombre_proveedor VARCHAR(50),
    numero_proveedor INT NOT NULL
);
CREATE TABLE tbl_inv_bodega(
	id_inv_bodega INT PRIMARY KEY AUTO_INCREMENT,
    cantidad_producto_bodega INT NOT NULL
);
CREATE TABLE tbl_stock(
	id_stock INT PRIMARY KEY AUTO_INCREMENT,
    cantidad_producto_stock INT 
);
CREATE TABLE tbl_cargo(
	id_cargo INT PRIMARY KEY AUTO_INCREMENT,
    fk_id_horario INT,
	FOREIGN KEY (fk_id_horario) REFERENCES tbl_horario (id_horario),
    nombre_cargo VARCHAR(20) NOT NULL
);
CREATE TABLE tbl_trabajador(
	id_trabajador INT AUTO_INCREMENT PRIMARY KEY,
    fk_tipo_doc INT,
    fk_id_cargo INT,
    FOREIGN KEY (fk_tipo_doc) REFERENCES tbl_tipo_doc(id_tipo_doc),
    FOREIGN KEY (fk_id_cargo) REFERENCES tbl_cargo(id_cargo),
    nombre_trabajador VARCHAR(70) NOT NULL,
    documento INT NOT NULL
);
CREATE TABLE tbl_producto(
	id_producto INT PRIMARY KEY AUTO_INCREMENT,
    fk_id_categoria_producto INT,
    fk_id_proveedor INT,
    fk_id_stock INT,
    fk_id_inv_bodega INT,
    fk_id_iva INT, 
    FOREIGN KEY (fk_id_categoria_producto) REFERENCES tbl_categoria_producto(id_categoria_producto),
    FOREIGN KEY (fk_id_proveedor) REFERENCES tbl_proveedor(id_proveedor),
    FOREIGN KEY (fk_id_stock) REFERENCES tbl_stock (id_stock),
    FOREIGN KEY (fk_id_inv_bodega) REFERENCES tbl_inv_bodega(id_inv_bodega),
    FOREIGN KEY (fk_id_iva) REFERENCES tbl_iva(id_iva),
    nombre_producto VARCHAR(80),
    fecha_vencimiento DATE,
    precio INT
);
CREATE TABLE tbl_factura(
	id_factura INT AUTO_INCREMENT PRIMARY KEY,
    fk_id_trabajador INT,
    FOREIGN KEY (fk_id_trabajador) REFERENCES tbl_trabajador(id_trabajador),
    fecha DATETIME NOT NULL,
    total INT NOT NULL
);
CREATE TABLE tbl_detalle_fact_producto(
	fk_id_producto INT,
    fk_id_factura INT, 
    FOREIGN KEY (fk_id_producto) REFERENCES tbl_producto (id_producto),
    FOREIGN KEY (fk_id_factura) REFERENCES tbl_factura (id_factura)
);
