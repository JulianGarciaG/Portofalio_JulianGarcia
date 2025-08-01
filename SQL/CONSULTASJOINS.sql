use sakila;
select * from staff;
select * from payment;
select * from customer;
select * from rental;
select * from film;
select * from film_category;
select * from actor;
select * from film_actor;
select * from country;
select ST_AsText(location) from address;
SELECT description from film;

#1 - Consulta con INNER JOIN para obtener nombres de actores y títulos de películas en las que han actuado
SELECT actor.first_name, film.title from actor
INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id
INNER JOIN film ON film_actor.film_id = film.film_id;

#2 - Consulta con LEFT JOIN para obtener información de clientes y sus alquileres (incluyendo los no alquilados)
SELECT customer.first_name, customer.last_name, rental.rental_date FROM customer
LEFT JOIN  rental on customer.customer_id = rental.customer_id;


#3 Consulta con RIGHT JOIN para obtener información de empleados y sus jefes (incluyendo empleados sin jefe) NO SE HACE POR QUE NO ESTA LA TABLA EMPLEADOS

#4 - Consulta con INNER JOIN para obtener detalles de pagos y nombres de clientes
SELECT payment.*, customer.first_name, customer.last_name
from payment  
join customer on payment.customer_id = customer.customer_id;

#5 - Consulta con LEFT JOIN para obtener información de películas y sus categorías (incluyendo películas sin categoría)
SELECT film.*, category.name
from film 
LEFT JOIN film_category on film.film_id = film_category.film_id
LEFT JOIN category on film_category.category_id = category.category_id; 

#6 - Consulta con RIGHT JOIN para obtener información de tiendas y sus gerentes (incluyendo tiendas sin gerente)

SELECT store.store_id, staff.first_name as gerente
FROM store
right join staff 
on store.manager_staff_id = staff.staff_id;

#7 - Consulta con INNER JOIN para obtener detalles de inventario y nombres de películas
SELECT inventory.*, film.title 
from inventory 
join film on inventory.film_id = film.film_id;

#8 - Consulta con LEFT JOIN para obtener información de pagos y nombres de personal de tienda (incluyendo personal sin pagos)
SELECT payment.*, staff.first_name, staff.last_name
from staff
LEFT JOIN payment on staff.staff_id = payment.staff_id; 

#9 - Consulta con RIGHT JOIN para obtener información de actores y sus películas (incluyendo actores sin películas)
SELECT actor.*, film.title
FROM actor 
RIGHT JOIN film_actor on film_actor.actor_id = actor.actor_id
RIGHT JOIN film on film.film_id = film_actor.film_id;

#10 - - Consulta con INNER JOIN para obtener detalles de alquileres y nombres de clientes
SELECT rental.*, customer.first_name, customer.last_name 
from rental 
JOIN customer on rental.customer_id = customer.customer_id;

#11 - Muestra las categorías de películas junto con el título de la película más alquilada en cada categoría.
select * 
from category 
inner join film_category 
on category.category_id = film_category.category_id


 