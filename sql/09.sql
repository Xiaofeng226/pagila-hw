/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

select staff.first_name, staff.last_name, sum(payment.amount) as sum 
from payment
join staff on staff.staff_id = payment.staff_id
where payment.payment_date::text ILIKE '%2020-01%'
group by first_name, last_name;

