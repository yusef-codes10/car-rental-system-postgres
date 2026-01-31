--!1- Find customers who rented the same car more than once
-- find a car that has been rented more than once
SELECT car.model,
       car.make,
       count(*),
       customer.first_name,
       customer.last_name
FROM car
JOIN rental on rental.car_id = car.id
JOIN Customer on customer.id = rental.costumer_id
GROUP BY rental.car_id,
         car.model,
         car.make,
         customer.first_name,
         customer.last_name
HAVING count(*) >= 2;

--!2- List cars that were rented by more than one different customer
SELECT car.model,
       car.make,
       count(*),
       customer.first_name,
       customer.last_name
FROM Car
JOIN rental on rental.car_id = car.id
JOIN customer on customer.id = rental.costumer_id
group by rental.costumer_id,
         car.model,
         car.make,
         customer.first_name,
         customer.last_name
HAVING count(*) >= 2;
