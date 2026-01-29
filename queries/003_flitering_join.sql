--!1- Show all rentals where the car is currently marked as `Rented`
SELECT rental.*, car.availability FROM rental 
JOIN Car on car.id = rental.car_id
WHERE car.availability = 'Rented';

--!2- Show rentals where the return date is NULL but the end date has already passed.
SELECT rental.* FROM rental
WHERE return_date IS NULL AND end_date > NOW()::DATE;
