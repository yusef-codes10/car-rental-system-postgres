-- 🟡 LEVEL 2 — LEFT JOIN intuition (NULL awareness)

-- !1- Show all cars, even those that were never rented.
SELECT car.* FROM car 
LEFT JOIN rental on rental.car_id = car.id;

    -- ? what if we just showed the entire cars

-- !2- Show all customers, even those who never rented a car.
SELECT Customer.* From Customer
LEFT JOIN rental on rental.costumer_id = customer.id;