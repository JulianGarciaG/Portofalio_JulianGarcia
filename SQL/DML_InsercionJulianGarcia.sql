
/*INSERCION*/
INSERT INTO tbl_tipo_doc VALUES 
(null, "Cedula de ciudadania", "CC"),
(null, "Cedula de extranjeria", "CE"),
(null, "Registro civil", "RC"),
(null, "Salvo conducto", "SC"),
(null, "Tarjeta de identidad", "TI"),
(null, "Permiso de permanencia", "PPT");

INSERT INTO tbl_int_horaria VALUES 
(null, "6 HORAS"),
(null, "8 HORAS"),
(null, "0 HORAS"),
(null, "12 HORAS");

INSERT INTO tbl_tienda VALUES 
(null, "ZARA"),
(null, "MINISO"),
(null, "DOLLAR CITY"),
(null, "VISITANTE"),
(null, "ADIDAS");

INSERT INTO tbl_entrada VALUES 
(null, "SUR"),
(null, "NORTE"),
(null, "CENTRAL");
/*INSERCION DE DATOS*/
INSERT INTO tbl_tipo_cargo VALUES
(null, "CLIENTE"),
(null, "CAJERO"),
(null, "SERVICIOS VARIOS"),
(null, "GUARDIA DE SEGURIDAD");

INSERT INTO tbl_cargo VALUES
(null, 3, 1, 4),
(null, 1, 2, 3),
(null, 1, 3, 3),
(null, 2, 4, 2);

INSERT INTO tbl_usuario VALUES
(null, 5, 3, "KAREN EDITH GONZALES", 12, "F", 1212938403, TRUE),
(null, 1, 2, "DIEGO ROJAS", 23, "M", 1091918403, TRUE),
(null, 5, 2, "LEONARDO GIRALDO", 15, "M", 0212228423, TRUE),
(null, 3, 1, "MARTIN HURTADO", 20, "M", 1022654403, TRUE),
(null, 5, 3, "LUIS GIRALDO", 8, "M", 1021293466, TRUE),
(null, 2, 4, "JUAN RIOS", 19, "M", 1021293849, TRUE);

INSERT INTO tbl_registro_ent_sal VALUES
(null, 6, 5, 3, "2024-07-02 18:46:00", "2024-07-02 20:52:00"),
(null, 3, 4, 2, "2024-01-04 16:40:00", "2024-01-04 22:10:00"),
(null, 4, 1, 1, "2024-12-25 12:10:00", "2024-12-25 20:00:00"),
(null, 1, 3, 1, "2024-11-26 10:10:00", "2024-11-26 20:10:00");