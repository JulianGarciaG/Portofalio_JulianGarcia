USE sakila;
CREATE  VIEW Vista_clientesGastones AS 
SELECT c.first_name, SUM(p.amount) AS Gasto_total
FROM customer c
JOIN payment p ON p.customer_id = c.customer_id
GROUP BY c.customer_id 
ORDER BY Gasto_total DESC
LIMIT 5;

CREATE VIEW Categorias_mas_ingreso AS 
SELECT c.name, SUM(amount) AS Ingreso_Total_Categoria
FROM category c
JOIN film_category fc ON fc.category_id = c.category_id
JOIN film f ON f.film_id = fc.film_id
JOIN inventory i ON i.film_id = f.film_id
JOIN rental r ON r.inventory_id = i.inventory_id
JOIN payment p ON p.rental_id = r.rental_id
GROUP BY fc.category_id 
ORDER BY Ingreso_Total_Categoria DESC;

SELECT * FROM categorias_mas_ingreso
where name = "drama";

#Triggers o disparadores 

CREATE TABLE log_actor(
	id_actor int not null,
    accion varchar (35),
    fecha_registro datetime not null
);



DELIMITER $$
	CREATE TRIGGER log_nuevo_actor
    after insert on actor 
    for each row 
    BEGIN
		INSERT INTO  log_actor(id_actor, fecha_registro, accion)
        VALUES (NEW.actor_id, now(), "AGREGO UN NUEVO ACTOR");
    END$$
DELIMITER ;


DELIMITER $$
	CREATE TRIGGER log_actualiza_actor 
    AFTER UPDATE ON actor 
    FOR EACH ROW 
    BEGIN
		INSERT INTO log_actor(id_actor, fecha_registro, accion)
        VALUES (NEW.actor_id, now(), "ACTUALIZO UN ACTOR");
    END$$
DELIMITER ; 


DELIMITER $$
	CREATE TRIGGER log_elimina_actor 
    AFTER DELETE ON actor 
    FOR EACH ROW 
    BEGIN
		INSERT INTO log_actor(id_actor, fecha_registro, accion)
        VALUES (OLD.actor_id, now(), "ELIMINO UN ACTOR");
    END$$
DELIMITER ; 

