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

--!3- Find customers who have rented cars that later broke down
SELECT customer.first_name,
       customer.last_name,
       car.availability,
       car.model,
       car.make
FROM Customer
JOIN Rental ON rental.costumer_id = customer.id
JOIN Car ON car.id = rental.car_id
WHERE availability = 'Breakdown';

--!4- Show rentals where the rental duration was longer than 3 days
SELECT rental.*
FROM Rental
WHERE return_date - start_date > 3;

--!5- Find customers who rented a car and returned it late (return_date > end_date)
SELECT customer.last_name,
       customer.first_name
FROM Customer
JOIN rental on rental.costumer_id = customer.id
WHERE rental.return_date > rental.end_date;


