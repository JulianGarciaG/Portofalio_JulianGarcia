use sakila;
SELECT * FROM RENTAL;
SELECT * from STORE;
SELECT * FROM CUSTOMER;
SELECT * FROM INVENTORY;
SELECT c.first_name, c.last_name FROM customer c;
SELECT p.film_id, p.title, p.length FROM film p WHERE length > 120;

SELECT p.film_id, p.title FROM film p WHERE description LIKE "%ACTION%";
SELECT c.first_name
FROM CUSTOMER c
JOIN rental r on r.customer_id = c.customer_id
JOIN inventory i on i.inventory_id = r.inventory_id
WHERE i.store_id = 1;

SELECT i.store_id, COUNT(*) AS peliculasALQ_cadaTienda
FROM inventory i 
JOIN rental r on r.inventory_id = i.inventory_id
GROUP BY i.store_id; 

SELECT  f.film_id, f.title, COUNT(r.rental_id) AS NumAlquileres
FROM film f
JOIN inventory i on i.film_id = f.film_id
JOIN rental r on r.inventory_id = i.inventory_id 
GROUP BY i.film_id
ORDER BY NumAlquileres DESC
LIMIT 5;


SELECT c.first_name, COUNT(r.rental_id) AS Alquileres
FROM customer c
JOIN rental r on r.customer_id = c.customer_id
GROUP BY c.customer_id 
ORDER BY Alquileres DESC
LIMIT 5;



SELECT* FROM STORE;
SELECT * FROM INVENTORY;
SELECT * FROM RENTAL;
SELECT * FROM PAYMENT;
SELECT s.store_id, SUM(amount) as total_venta
FROM store s 
JOIN inventory i on i.store_id = s.store_id
JOIN RENTAL r on r.inventory_id = i.inventory_id
JOIN PAYMENT p ON p.rental_id = r.rental_id
GROUP BY i.store_id
ORDER BY total_venta desc;



SELECT * FROM CATEGORY;
SELECT * FROM film_category;
SELECT * FROM film;
SELECT * FROM inventory;
SELECT * FROM rental;
SELECT * FROM payment;
SELECT c.name, SUM(amount) AS Ingreso_Total_Categoria
FROM category c
JOIN film_category fc ON fc.category_id = c.category_id
JOIN film f ON f.film_id = fc.film_id
JOIN inventory i ON i.film_id = f.film_id
JOIN rental r ON r.inventory_id = i.inventory_id
JOIN payment p ON p.rental_id = r.rental_id
GROUP BY fc.category_id 
ORDER BY Ingreso_Total_Categoria DESC;

SELECT * FROM Customer; 
SELECT * FROM Payment;
SELECT c.first_name, SUM(p.amount) AS Gasto_total
FROM customer c
JOIN payment p ON p.customer_id = c.customer_id
GROUP BY c.customer_id 
ORDER BY Gasto_total DESC
LIMIT 5;


