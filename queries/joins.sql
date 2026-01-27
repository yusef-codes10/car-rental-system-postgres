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