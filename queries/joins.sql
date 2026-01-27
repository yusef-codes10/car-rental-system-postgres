--!1- Show me all rentals with the car model and the customer’s full name.
SELECT first_name, last_name, model FROM rental 
JOIN Customer on customer.id = rental.costumer_id
JOIN car on car.id = rental.car_id;

--!2- List all cars that have ever been rented at least once.
SELECT DISTINCT model, make FROM Car 
JOIN Rental on rental.car_id = car.id
where car.id in (
    SELECT car_id from rental

);

        -- ? cleaner version
        SELECT DISTINCT c.model, c.make
        FROM car c
        JOIN rental r ON r.car_id = c.id;

--!3- List all customers who have rented a car at least once.
SELECT DISTINCT first_name, last_name FROM Customer 
JOIN Rental on rental.costumer_id = Customer.id
where Customer.id in (
    SELECT costumer_id from rental

);

        -- ? cleaner version
        SELECT DISTINCT cu.first_name, cu.last_name
        FROM customer cu
        JOIN rental r ON r.costumer_id = cu.id;


--!4- Show all rentals that have not been returned yet, including car model and customer name.
SELECT first_name, last_name, model, make FROM Customer
JOIN rental on rental.costumer_id = Customer.id
JOIN car on rental.car_id = car.id
where rental.return_date is null;

--!5- Show each rental with car make, model, and rental start & end date.
SELECT model, make, start_date, end_date FROM rental
JOIN car on car.id = rental.car_id;