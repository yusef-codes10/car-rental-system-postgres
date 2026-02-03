--!1- Find all cars whose hourly_rental_price is higher than the average hourly rental price of all cars.
WITH avg_rental AS (
    SELECT AVG(hourly_rental_price) as avg_price
    FROM car
)
SELECT car.*
FROM car
CROSS JOIN avg_rental
WHERE car.hourly_rental_price >= avg_rental.avg_price;

--!2- Retrieve the first name, last name, and date of birth of the customer who is the oldest in the database.
WITH oldest_date AS (
    SELECT MIN(date_of_birth) as min_value
    FROM customer
)
SELECT customer.first_name, customer.last_name, customer.date_of_birth
FROM customer
WHERE customer.date_of_birth = (
    SELECT min_value
    FROM oldest_date
 );