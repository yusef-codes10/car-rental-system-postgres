-- 🟡 LEVEL 2 — LEFT JOIN intuition (NULL awareness)

-- !1- Show all cars, even those that were never rented.
SELECT car.* FROM car 
LEFT JOIN rental on rental.car_id = car.id;

    -- ? what if we just showed the entire cars

-- !2- Show all customers, even those who never rented a car.
SELECT Customer.* From Customer
LEFT JOIN rental on rental.costumer_id = customer.id;

--!3- List customers who never rented any car
SELECT costumer.* from customer
LEFT JOIN rental on rental.customer_id = customer.id where rental.costumer_id IS NULL;

        -- ? opposite query
        select rental.costumer_id, customer.first_name, customer.last_name from rental
        rental-# join customer on customer.id = rental.costumer_id;

--!4- List cars that were never rented
SELECT car.* FROM car
LEFT JOIN rental on rental.car_id = car.id
WHERE rental.car_id IS NULL;

        --? opposite query 
        SELECT car.* FROM car
        JOIN rental on rental.car_id = car.id;

--!5- Show all cars and the number of times each car was rented (including zero)
SELECT count(*) as numbers_of_rent from car
JOIN rental on rental.car_id = car.id
GROUP BY car.id;
