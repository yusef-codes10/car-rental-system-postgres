--!1- Find all cars whose hourly_rental_price is higher than the average hourly rental price of all cars.

    --? 1st avg rental price of all cars
    SELECT AVG(hourly_rental_price) as avg
    FROM car;

    --? higher than that avg
    SELECT car.*
    FROM car
    WHERE car.hourly_rental_price > (
        SELECT AVG(hourly_rental_price) as avg
        FROM car
    );

--!2- Retrieve the first name, last name, and date of birth of the customer who is the oldest in the database.

SELECT customer.first_name,
        customer.last_name,
        customer.date_of_birth
FROM customer
WHERE customer.date_of_birth = (
    SELECT MIN(date_of_birth)
    FROM customer
);