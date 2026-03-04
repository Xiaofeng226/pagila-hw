/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

select c.name, count(f.film_id) as "sum" from film as f
join language as l on f.language_id = l.language_id
join film_category as fc on f.film_id = fc.film_id
join category as c on fc.category_id = c.category_id
where l.name = 'English'
group by c.name;
