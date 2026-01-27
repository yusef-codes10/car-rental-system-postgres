-- Show me all rentals with the car model and the customer’s full name.
SELECT first_name, last_name, model FROM rental 
JOIN Customer on customer.id = rental.costumer_id
JOIN car on car.id = rental.car_id;

-- List all cars that have ever been rented at least once.
SELECT DISTINCT model, make FROM Car 
JOIN Rental on rental.car_id = car.id
where car.id in (
    SELECT car_id from rental

);

-- List all customers who have rented a car at least once.
SELECT DISTINCT first_name, last_name FROM Customer 
JOIN Rental on rental.costumer_id = Customer.id
where Customer.id in (
    SELECT costumer_id from rental

);

-- Show all rentals that have not been returned yet, including car model and customer name.
SELECT first_name, last_name, model, make FROM Customer
JOIN rental on rental.costumer_id = Customer.id
JOIN car on rental.car_id = car.id
where rental.return_date is null;

-- Show each rental with car make, model, and rental start & end date.
SELECT model, make, start_date, end_date FROM rental
JOIN car on car.id = rental.car_id;