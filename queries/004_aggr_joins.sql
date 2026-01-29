--!1- Show each customer and how many rentals they have made
SELECT customer.first_name,
       customer.last_name,
       count(*) as rentals_number 
FROM Customer
JOIN rental on rental.costumer_id = customer.id
group by rental.customer_id,
customer.first_name,
customer.last_name;

--!2- List customers who have rented more than one car
SELECT  customer.first_name,
        customer.last_name,
        count(*) as rent_number
FROM Customer
JOIN Rental on rental.costumer_id = customer.id
GROUP BY rental.costumer_id,
         customer.first_name,
         customer.last_name
HAVING count(*) > 1;

--!3- Show the total number of rentals per car model
SELECT Count(*) total_rents,
        car.model
FROM rental
JOIN car on car.id = rental.car_id
GROUP BY car.model;