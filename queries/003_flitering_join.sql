--!1- Show all rentals where the car is currently marked as `Rented`
SELECT rental.*, car.availability FROM rental 
JOIN Car on car.id = rental.car_id
WHERE car.availability = 'Rented';

--!2- Show rentals where the return date is NULL but the end date has already passed.
SELECT rental.* FROM rental
WHERE return_date IS NULL AND end_date > NOW()::DATE;

--!3- List customers who currently have a car rented (not yet returned).
SELECT customer.* FROM Customer
JOIN rental on customer.id = rental.costumer_id
JOIN car on car.id = rental.car_id
WHERE car.availability = 'Rented' AND rental.return_date IS NULL;

--!4- Show cars that are marked as `Available` but have rental history.
SELECT car.* FROM car
JOIN rental on rental.car_id = car.id
WHERE car.availability = 'Available';