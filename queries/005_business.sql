--!1- Find customers who rented the same car more than once
-- find a car that has been rented more than once
SELECT car.model, car.make, count(*)
FROM car
JOIN rental on rental.car_id = car.id
GROUP BY rental.car_id,
         car.model,
         car.make
HAVING count(*) >= 2;
