-- Show me all rentals with the car model and the customer’s full name.
SELECT first_name, last_name, model FROM rental 
JOIN Customer on customer.id = rental.costumer_id
JOIN car on car.id = rental.car_id;
