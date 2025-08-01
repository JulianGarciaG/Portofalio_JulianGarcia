USE tiendabarrio;

#Insertar productos en tabla categoria producto
DELIMITER //
CREATE PROCEDURE InsertarCategoriaProducto(in _id_categoria_producto INT, in _nombre_categoria VARCHAR(20))
BEGIN
	INSERT INTO tbl_categoria_producto (id_categoria_producto, nombre_categoria)
    values (_id_categoria_producto, _nombre_categoria);
END//
CALL InsertarCategoriaProducto(null, "ASEO");
CALL InsertarCategoriaProducto(null, "ALIMENTOS");
CALL InsertarCategoriaProducto(null, "BEBIDAS");
CALL InsertarCategoriaProducto(null, "EMBUTIDOS");
CALL InsertarCategoriaProducto(null, "LACTEOS");
CALL InsertarCategoriaProducto(null, "MECATO");
CALL InsertarCategoriaProducto(null, "BEBIDAS ALCOHOLICAS");
CALL InsertarCategoriaProducto(null, "MASCOTAS");
CALL InsertarCategoriaProducto(null, "OTROS");

#Insertar productos en tabla horario 
DELIMITER //
CREATE PROCEDURE InsertarHorario(in _id_horario INT, in _nombre_horario VARCHAR(20), in _horas INT)
BEGIN
	INSERT INTO tbl_horario (id_horario, nombre_horario, horas)
    values (_id_horario,_nombre_horario, _horas);
END//
CALL InsertarHorario(null, "MAÑANA", 8);
CALL InsertarHorario(null, "TARDE", 8);

#Insertar productos en tabla TIPO DOCUMENTO
DELIMITER //
CREATE PROCEDURE InsertarTipoDoc(in _id_tipo_doc INT, in _nombre_doc VARCHAR(45), in _siglas VARCHAR(10))
BEGIN
	INSERT INTO tbl_tipo_doc (id_tipo_doc, nombre_doc, siglas)
    values (_id_tipo_doc,_nombre_doc, _siglas);
END//
CALL InsertarTipoDoc(null, "TARJETA DE IDENTIDAD", "TI");
CALL InsertarTipoDoc(null, "CEDULA DE CIUDADANIA", "CC");
CALL InsertarTipoDoc(null, "PERMISO DE PERMANENCIA TEMPORAL", "PPT");
CALL InsertarTipoDoc(null, "CEDULA DE EXTRANJERIA", "CE");

#Insertar en tabla iva 
DELIMITER //
CREATE PROCEDURE InsertarIva(in _porcentaje_iva DECIMAL)
BEGIN
	INSERT INTO tbl_iva (porcentaje_iva)
    values (_porcentaje_iva);
END//
CALL InsertarIva(19.0);
CALL InsertarIva(5.0);
CALL InsertarIva(0.0);

#Insertar en proveedor 
DELIMITER //
CREATE PROCEDURE InsertarProveedor(in _id_proveedor INT, in _nombre_proveedor VARCHAR(50), _numero_proveedor INT)
BEGIN
	INSERT INTO tbl_proveedor (id_proveedor, nombre_proveedor, numero_proveedor)
    values (_id_proveedor, _nombre_proveedor, _numero_proveedor);
END//
CALL InsertarProveedor(null, "COLANTA", 304459399);
CALL InsertarProveedor(null, "AXION", 304111223);
CALL InsertarProveedor(null, "FAB", 304112224);
CALL InsertarProveedor(null, "JABON REY", 304113225);
CALL InsertarProveedor(null, "SUAVITEL", 304114226);
CALL InsertarProveedor(null, "CLOROX", 304115227);
CALL InsertarProveedor(null, "LAVALOZA TRICOLOR", 304116228);
CALL InsertarProveedor(null, "HARINAS EL GUARDIAN", 304211223);
CALL InsertarProveedor(null, "ARROZ ROA", 304212224);
CALL InsertarProveedor(null, "PASTAS DORIA", 304213225);
CALL InsertarProveedor(null, "FRUVER FRESCO", 304214226);
CALL InsertarProveedor(null, "ACEITE PREMIER", 304215227);
CALL InsertarProveedor(null, "GALLETAS NOEL", 304216228);
CALL InsertarProveedor(null, "COLGATE", 304217229);
CALL InsertarProveedor(null, "CAFÉ SELLO ROJO", 304218230);
CALL InsertarProveedor(null, "POSTOBON", 304311223);
CALL InsertarProveedor(null, "COKECO", 304312224);
CALL InsertarProveedor(null, "AGUA CRISTAL", 304313225);
CALL InsertarProveedor(null, "MALTIZ", 304314226);
CALL InsertarProveedor(null, "JUGOS HIT", 304315227);
CALL InsertarProveedor(null, "NECTAR FRUCO", 304316228);
CALL InsertarProveedor(null, "AGUA MANANTIAL", 304317229);
CALL InsertarProveedor(null, "ZENÚ", 304411223);
CALL InsertarProveedor(null, "RICA RONDA", 304412224);
CALL InsertarProveedor(null, "ALIMENTOS CÁRNICOS", 304413225);
CALL InsertarProveedor(null, "PIAMONTE", 304414226);
CALL InsertarProveedor(null, "CARRISSA", 304415227);
CALL InsertarProveedor(null, "INDUVECA", 304416228);
CALL InsertarProveedor(null, "ALPINA", 304512224);
CALL InsertarProveedor(null, "NUTRESA", 304513225);
CALL InsertarProveedor(null, "DELICIA", 304514226);
CALL InsertarProveedor(null, "LECHE SAN ANTONIO", 304515227);
CALL InsertarProveedor(null, "YOGURES KISS", 304516228);
CALL InsertarProveedor(null, "NUTRESA", 304611223);
CALL InsertarProveedor(null, "TOSH", 304612224);
CALL InsertarProveedor(null, "JET", 304613225);
CALL InsertarProveedor(null, "FRITOLAY", 304614226);
CALL InsertarProveedor(null, "RICOS", 304615227);
CALL InsertarProveedor(null, "MECATO LIGHT", 304616228);
CALL InsertarProveedor(null, "PRODUCTOS YUPI", 304617229);
CALL InsertarProveedor(null, "CERVECERIA UNIDOS", 304711223);
CALL InsertarProveedor(null, "RON SANTAFE", 304712224);
CALL InsertarProveedor(null, "VINO CASILLERO", 304713225);
CALL InsertarProveedor(null, "TEQUILA SIERVO", 304714226);
CALL InsertarProveedor(null, "CERVEZA AGUILA", 304715227);
CALL InsertarProveedor(null, "WHISKY JOHNNIE WALKER", 304716228);
CALL InsertarProveedor(null, "PURINA", 304811223);
CALL InsertarProveedor(null, "DOGOURMET", 304812224);
CALL InsertarProveedor(null, "GATINA", 304813225);
CALL InsertarProveedor(null, "NUTRIN", 304814226);
CALL InsertarProveedor(null, "RAZA", 304815227);
CALL InsertarProveedor(null, "ALIMENTOS PURA VIDA", 304816228);
CALL InsertarProveedor(null, "PAPEL COLOMBIA", 304911223);
CALL InsertarProveedor(null, "VELAS MARISOL", 304912224);
CALL InsertarProveedor(null, "ENCENDEDOR AMERICANO", 304913225);
CALL InsertarProveedor(null, "BOLSAS ZOE", 304914226);

#Insertar en stock
DELIMITER //
CREATE PROCEDURE InsertarStock(in _id_stock INT,in _cantidad_stock INT)
BEGIN
	INSERT INTO tbl_stock (id_stock, cantidad_producto_stock)
    values (_id_stock, _cantidad_stock);
END//
CALL InsertarStock(NULL, 19);
CALL InsertarStock(NULL, 7);
CALL InsertarStock(NULL, 15);
CALL InsertarStock(NULL, 3);
CALL InsertarStock(NULL, 20);
CALL InsertarStock(NULL, 10);
CALL InsertarStock(NULL, 0);
CALL InsertarStock(NULL, 18);
CALL InsertarStock(NULL, 5);
CALL InsertarStock(NULL, 12);
CALL InsertarStock(NULL, 8);
CALL InsertarStock(NULL, 17);
CALL InsertarStock(NULL, 1);
CALL InsertarStock(NULL, 14);
CALL InsertarStock(NULL, 9);
CALL InsertarStock(NULL, 11);
CALL InsertarStock(NULL, 2);
CALL InsertarStock(NULL, 6);
CALL InsertarStock(NULL, 13);
CALL InsertarStock(NULL, 4);
CALL InsertarStock(NULL, 19);
CALL InsertarStock(NULL, 16);
CALL InsertarStock(NULL, 20);
CALL InsertarStock(NULL, 3);
CALL InsertarStock(NULL, 5);
CALL InsertarStock(NULL, 10);
CALL InsertarStock(NULL, 15);
CALL InsertarStock(NULL, 7);
CALL InsertarStock(NULL, 18);
CALL InsertarStock(NULL, 2);
CALL InsertarStock(NULL, 13);
CALL InsertarStock(NULL, 9);
CALL InsertarStock(NULL, 6);
CALL InsertarStock(NULL, 12);
CALL InsertarStock(NULL, 8);
CALL InsertarStock(NULL, 17);
CALL InsertarStock(NULL, 0);
CALL InsertarStock(NULL, 11);
CALL InsertarStock(NULL, 1);
CALL InsertarStock(NULL, 14);
CALL InsertarStock(NULL, 4);
CALL InsertarStock(NULL, 16);
CALL InsertarStock(NULL, 18);
CALL InsertarStock(NULL, 3);
CALL InsertarStock(NULL, 7);
CALL InsertarStock(NULL, 15);
CALL InsertarStock(NULL, 19);
CALL InsertarStock(NULL, 10);
CALL InsertarStock(NULL, 5);
CALL InsertarStock(NULL, 20);

#Insertar en bodega
DELIMITER //
CREATE PROCEDURE InsertarInvBodega(in _id_inv_bodega INT,in _cantidad_producto_bodega INT)
BEGIN
	INSERT INTO tbl_inv_bodega (id_inv_bodega, cantidad_producto_bodega)
    values (_id_inv_bodega, _cantidad_producto_bodega);
END//
CALL InsertarInvBodega(NULL, 47);
CALL InsertarInvBodega(NULL, 29);
CALL InsertarInvBodega(NULL, 58);
CALL InsertarInvBodega(NULL, 35);
CALL InsertarInvBodega(NULL, 64);
CALL InsertarInvBodega(NULL, 20);
CALL InsertarInvBodega(NULL, 9);
CALL InsertarInvBodega(NULL, 63);
CALL InsertarInvBodega(NULL, 50);
CALL InsertarInvBodega(NULL, 71);
CALL InsertarInvBodega(NULL, 14);
CALL InsertarInvBodega(NULL, 62);
CALL InsertarInvBodega(NULL, 11);
CALL InsertarInvBodega(NULL, 48);
CALL InsertarInvBodega(NULL, 30);
CALL InsertarInvBodega(NULL, 26);
CALL InsertarInvBodega(NULL, 39);
CALL InsertarInvBodega(NULL, 55);
CALL InsertarInvBodega(NULL, 3);
CALL InsertarInvBodega(NULL, 67);
CALL InsertarInvBodega(NULL, 28);
CALL InsertarInvBodega(NULL, 43);
CALL InsertarInvBodega(NULL, 7);
CALL InsertarInvBodega(NULL, 65);
CALL InsertarInvBodega(NULL, 24);
CALL InsertarInvBodega(NULL, 54);
CALL InsertarInvBodega(NULL, 12);
CALL InsertarInvBodega(NULL, 70);
CALL InsertarInvBodega(NULL, 18);
CALL InsertarInvBodega(NULL, 46);
CALL InsertarInvBodega(NULL, 60);
CALL InsertarInvBodega(NULL, 32);
CALL InsertarInvBodega(NULL, 21);
CALL InsertarInvBodega(NULL, 8);
CALL InsertarInvBodega(NULL, 44);
CALL InsertarInvBodega(NULL, 68);
CALL InsertarInvBodega(NULL, 37);
CALL InsertarInvBodega(NULL, 40);
CALL InsertarInvBodega(NULL, 25);
CALL InsertarInvBodega(NULL, 33);
CALL InsertarInvBodega(NULL, 4);
CALL InsertarInvBodega(NULL, 66);
CALL InsertarInvBodega(NULL, 49);
CALL InsertarInvBodega(NULL, 31);
CALL InsertarInvBodega(NULL, 41);
CALL InsertarInvBodega(NULL, 5);
CALL InsertarInvBodega(NULL, 15);
CALL InsertarInvBodega(NULL, 53);
CALL InsertarInvBodega(NULL, 61);
CALL InsertarInvBodega(NULL, 22);

#Insertar en cargo
DELIMITER //
CREATE PROCEDURE InsertarCargo(IN _id_cargo INT, IN  _fk_id_horario INT, IN _nombre_cargo VARCHAR(20))
BEGIN
	INSERT INTO tbl_Cargo (id_cargo, fk_id_horario, nombre_cargo)
    VALUES (_id_Cargo, _fk_id_horario, _nombre_cargo);
END//
CALL InsertarCargo(NULL, 1, "VENDEDOR MAÑANA");
CALL InsertarCargo(NULL, 2, "VENDEDOR TARDE");

#Insertar en TRABAJADOR
DELIMITER //
CREATE PROCEDURE InsertarTrabajador(IN _id_trabajador INT, IN _fk_tipo_doc INT, IN  _fk_id_cargo INT, IN _nombre_trabajador VARCHAR(20),IN _documento INT)
BEGIN
	INSERT INTO tbl_trabajador (id_trabajador, fk_tipo_doc, fk_id_cargo, nombre_trabajador, documento)
    VALUES (_id_trabajador, _fk_tipo_doc, _fk_id_cargo, _nombre_trabajador, _documento);
END//
CALL InsertarTrabajador (NULL, 2, 1, "JULIAN GARCIA", 1031806493); 
CALL InsertarTrabajador (NULL, 4, 2, "MARIA JOSE ESTRADA", 1021873012); 

#Insertar en factura
DELIMITER //
CREATE PROCEDURE InsertarFactura(IN _id_factura INT, IN _fk_id_trabajador INT, IN  _fecha DATETIME, IN _total INT)
BEGIN
	INSERT INTO tbl_factura (id_factura, fk_id_trabajador, fecha, total)
    VALUES (_id_factura, _fk_id_trabajador, _fecha, _total);
END//
CALL InsertarFactura(NULL, 1, '2024-08-16 16:22:39', 13000);
CALL InsertarFactura(NULL, 2, '2024-05-16 10:32:09', 180000);
CALL InsertarFactura(NULL, 1, '2024-02-13 08:02:40', 10000);
CALL InsertarFactura(NULL, 2, '2024-12-06 13:32:10', 30000);
CALL InsertarFactura(NULL, 1, '2022-18-10 10:12:20', 52000);

#Insertar en PRODUCTO
DELIMITER //
CREATE PROCEDURE InsertarProducto(IN _id_producto INT, IN _fk_id_categoria_producto INT, IN _fk_id_proveedor INT, IN _fk_id_stock INT,IN _fk_id_inv_bodega INT,IN _fk_id_iva INT,IN _nombre_producto VARCHAR(80),IN _fecha_vencimiento DATE,IN _precio INT)
BEGIN
	INSERT INTO tbl_producto(id_producto, fk_id_categoria_producto, fk_id_proveedor, fk_id_stock, fk_id_inv_bodega, fk_id_iva, nombre_producto, fecha_vencimiento, precio)
    VALUES (_id_producto, _fk_id_categoria_producto, _fk_id_proveedor, _fk_id_stock, _fk_id_inv_bodega , _fk_id_iva, _nombre_producto, _fecha_vencimiento, _precio);
END//
CALL InsertarProducto(NULL, 1, 2, 1, 1, 2, "JABON LAVA LOZA", '2025-08-12', 5000);
CALL InsertarProducto(NULL, 1, 3, 2, 2 , 1, "JABON EN POLVO FAB FLORAL", '2025-09-12', 7000);
CALL InsertarProducto(NULL, 1, 3, 2, 2, 1, "JABÓN REY", '2025-09-30', 2500); 
CALL InsertarProducto(NULL, 1, 6, 3, 3, 2, "CLOROX LIMPIADOR", '2026-01-05', 8500); 
CALL InsertarProducto(NULL, 1, 7, 4, 4, 2, "LAVALOZA TRICOLOR", '2024-12-15', 3000); 
CALL InsertarProducto(NULL, 1, 5, 5, 5, 2, "SUAVITEL", '2024-10-20', 4000); 
CALL InsertarProducto(NULL, 2, 9, 6, 6, 3, "ARROZ ROA 1KG", '2024-11-25', 4000); 
CALL InsertarProducto(NULL, 2, 11, 7, 7, 3, "PASTAS DORIA 500g", '2024-11-15', 3200); 
CALL InsertarProducto(NULL, 2, 10, 8, 8, 3, "HARINA EL GUARDIÁN 1KG", '2024-09-30', 2500); 
CALL InsertarProducto(NULL, 2, 15, 9, 9, 3, "CAFÉ SELLO ROJO 500g", '2025-02-10', 15000); 
CALL InsertarProducto(NULL, 2, 13, 10, 10, 3, "GALLETAS NOEL", '2024-10-25', 3500); 
CALL InsertarProducto(NULL, 3, 16, 11, 11, 1, "POSTOBÓN LIMÓN 1.5L", '2025-04-12', 3500); 
CALL InsertarProducto(NULL, 3, 18, 12, 12, 1, "MALTIZ 1.5L", '2025-03-22', 3000); 
CALL InsertarProducto(NULL, 3, 20, 13, 13, 1, "NECTAR FRUCO DURAZNO 1L", '2024-12-01', 4200); 
CALL InsertarProducto(NULL, 3, 21, 14, 14, 3, "AGUA MANANTIAL 1.5L", '2025-07-15', 2800); 
CALL InsertarProducto(NULL, 3, 17, 15, 15, 1, "COCACOLA 1.5L", '2025-01-20', 3700); 
CALL InsertarProducto(NULL, 4, 25, 16, 16, 3, "SALCHICHA ZENÚ 250g", '2024-09-10', 6200); 
CALL InsertarProducto(NULL, 4, 27, 17, 17, 3, "JAMÓN PIAMONTE 200g", '2024-10-15', 5500); 
CALL InsertarProducto(NULL, 4, 28, 18, 18, 3, "CHORIZO CARRISSA 300g", '2024-08-25', 7800);
CALL InsertarProducto(NULL, 4, 29, 19, 19, 3, "SALAMI INDUVECA 500g", '2024-11-20', 10000); 
CALL InsertarProducto(NULL, 4, 24, 20, 20, 3, "MORTADELA RICA RONDA 500g", '2024-09-18', 5400); 
CALL InsertarProducto(NULL, 5, 30, 21, 21, 3, "LECHE ALPINA 1L", '2024-10-05', 3700); 
CALL InsertarProducto(NULL, 5, 31, 22, 22, 3, "YOGUR KISS FRESA 150g", '2024-11-12', 1500); 
CALL InsertarProducto(NULL, 5, 32, 23, 23, 3, "MANTEQUILLA DELICIA 250g", '2024-09-30', 6800); 
CALL InsertarProducto(NULL, 5, 33, 24, 24, 3, "QUESO CAMPESINO SAN ANTONIO 500g", '2024-12-15', 12000); 
CALL InsertarProducto(NULL, 5, 34, 25, 25, 3, "YOGUR NUTRESA 150g", '2024-11-05', 1800); 
CALL InsertarProducto(NULL, 6, 36, 26, 26, 1, "BOLSA DE MECATO YUPI MIX 200g", '2025-02-28', 2200); 
CALL InsertarProducto(NULL, 6, 37, 27, 27, 1, "CHOCOLATE JET 12 UNIDADES", '2024-10-30', 4500); 
CALL InsertarProducto(NULL, 6, 38, 28, 28, 1, "GALLETAS TOSH AVENA 300g", '2024-12-25', 5400); 
CALL InsertarProducto(NULL, 6, 39, 29, 29, 1, "PAPAS FRITOLAY 150g", '2024-08-20', 3200); 
CALL InsertarProducto(NULL, 6, 40, 30, 30, 1, "GALLETAS RICOS 300g", '2024-10-22', 3800); 
CALL InsertarProducto(NULL, 7, 41, 31, 31, 1, "CERVEZA AGUILA 330ml", '2025-03-10', 2400); 
CALL InsertarProducto(NULL, 7, 42, 32, 32, 1, "RON SANTAFE 750ml", '2025-05-15', 30000); 
CALL InsertarProducto(NULL, 7, 43, 33, 33, 1, "VINO CASILLERO DEL DIABLO 750ml", '2026-02-20', 45000); 
CALL InsertarProducto(NULL, 7, 44, 34, 34, 1, "TEQUILA SIERVO 750ml", '2025-07-01', 52000); 
CALL InsertarProducto(NULL, 7, 45, 35, 35, 1, "WHISKY JOHNNIE WALKER 750ml", '2026-01-01', 120000); 
CALL InsertarProducto(NULL, 8, 46, 36, 36, 2, "ALIMENTO PERRO PURINA 1KG", '2024-12-01', 18000); 
CALL InsertarProducto(NULL, 8, 47, 37, 37, 2, "ALIMENTO GATO GATINA 1KG", '2024-12-01', 22000); 
CALL InsertarProducto(NULL, 8, 48, 38, 38, 2, "ALIMENTO PERRO RAZA 500g", '2024-10-10', 10000);
CALL InsertarProducto(NULL, 8, 49, 39, 39, 2, "SNACK PERRO JUMBO 250g", '2024-11-05', 7000); 
CALL InsertarProducto(NULL, 8, 50, 40, 40, 2, "CAMA PARA GATO", '2024-10-10', 35000); 

#Insertar en DETALLEPRODUCTO
DELIMITER //
CREATE PROCEDURE InsertarProductoFactura(IN _fk_id_producto INT, IN  _fk_id_factura INT, IN _Cant_producto_venta INT, IN _Subtotal INT)
BEGIN
	INSERT INTO tbl_detalle_fact_producto(fk_id_producto, fk_id_factura, Cant_producto_venta, Subtotal)
    VALUES (_fk_id_producto, _fk_id_factura, _Cant_producto_venta, _Subtotal);
END//
CALL InsertarProductoFactura(1, 1, 2, 10000);
CALL InsertarProductoFactura(4, 2, 1, 12300);
CALL InsertarProductoFactura(41, 3, 3, 122800);
CALL InsertarProductoFactura(42, 3, 1, 180000);
CALL InsertarProductoFactura(19, 4, 1, 10000);
CALL InsertarProductoFactura(32, 5, 1, 22000);
CALL InsertarProductoFactura(46, 5, 1, 30000);

