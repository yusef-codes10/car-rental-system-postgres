-- 🟡 Level 2 – Basic filtering with subqueries

--!1- List all cars that have never been rented.

    --? have been rented
    SELECT car.id
    FROM car
    JOIN rental on car.id = rental.car_id;

SELECT car.*
FROM car
WHERE car.id IN (
    SELECT car.id
    FROM car
    JOIN rental on car.id = rental.car_id
);

--!2- Show all customers who appear in the Rental table, but without using JOINs.
SELECT customer.*
FROM customer
WHERE customer.id in (
    SELECT rental.costumer_id
    FROM rental
);

--!3- Find all rentals whose price is greater than the maximum hourly rental price of any car.

SELECT rental.*
FROM rental
where rental.price IN (
    SELECT MAX(price)
    FROM rental
);

