-- Calculate the total revenue generated from pizza sales.
SELECT 
    SUM(price * quantity) AS totalRevenue
FROM
    order_details
        INNER JOIN
    pizzas USING (pizza_id);
