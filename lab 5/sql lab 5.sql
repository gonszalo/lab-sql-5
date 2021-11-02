-- SQL Queries 5
use sakila;

alter table staff drop column picture;

insert into staff (first_name, last_name, address_id, store_id, username)
select distinct first_name, last_name, address_id, store_id, first_name
from customer
where first_name = 'TAMMY' and last_name = 'SANDERS';


insert into rental (last_update)
select distinct last_update
from film
where title = 'ACADEMY DINOSAR';



select distinct film.title from rental
join inventory on rental.inventory_id = inventory.inventory_id
join film on inventory.film_id = film.film_id;
 
 
select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

select inventory_id from sakila.inventory
where film_id = 1;

select film_id from sakila.film
where title = 'Academy Dinosaur';

select staff_id from sakila.staff
where store_id = 1;


select count(active) from customer
where active = 0;


insert into deleted_users ( customer_id, email, date)
select customer_id, email, create_date
from customer
where active = 0;


delete from customer 
where active = 0
order by active;