/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */

select f.title from category as c
join film_category as fc on fc.category_id = c.category_id
join film as f on f.film_id = fc.film_id
where c.name = 'Family';
