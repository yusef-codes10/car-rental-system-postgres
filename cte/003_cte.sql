--!1- Find all cars whose hourly_rental_price is higher than the average hourly rental price of all cars.
WITH avg_rental AS (
    SELECT AVG(hourly_rental_price) as avg_price
    FROM car
)
SELECT car.*
FROM car
CROSS JOIN avg_rental
WHERE car.hourly_rental_price >= avg_rental.avg_price;
