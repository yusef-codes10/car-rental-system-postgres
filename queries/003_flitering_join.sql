--!1- Show all rentals where the car is currently marked as `Rented`
SELECT rental.*, car.availability FROM rental 
JOIN Car on car.id = rental.car_id
WHERE car.availability = 'Rented';
