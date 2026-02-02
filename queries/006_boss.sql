--!1- For each customer, show their last rental date and car model
--? find all rentals of a customer
SELECT rental.id, customer.last_name, customer.first_name
FROM rental
JOIN customer on customer.id = rental.costumer_id;

--? find rentals per customer
SELECT customer.last_name, customer.first_name,
count(*)
FROM rental
JOIN customer on customer.id = rental.costumer_id
GROUP BY rental.costumer_id,
        customer.last_name, customer.first_name;