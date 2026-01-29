--!1- Show each customer and how many rentals they have made
SELECT customer.first_name,
       customer.last_name,
       count(*) as rentals_number 
FROM Customer
JOIN rental on rental.costumer_id = customer.id
group by rental.customer_id,
customer.first_name,
customer.last_name;