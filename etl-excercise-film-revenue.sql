select f.title, sum(p.amount) as revenue from payment as p 
JOIN rental r on p.rental_id= r.rental_id
Join inventory i on r.inventory_id = i.inventory_id
join film f on i.film_id = f.film_id
group by f.title