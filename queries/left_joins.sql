-- 🟡 LEVEL 2 — LEFT JOIN intuition (NULL awareness)

-- !1- Show all cars, even those that were never rented.
SELECT car.* FROM car 
JOIN rental on rental.car_id = car.id;

    -- ? what if we just showed the entire cars