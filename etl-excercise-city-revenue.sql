select ct.city, sum(p.amount) as revenue from payment as p 
JOIN customer c on p.customer_id = c.customer_id
Join address ON c.address_id = address.address_id
join city ct on address.city_id = ct.city_id
group by ct.city LIMIT 5