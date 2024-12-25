-- Group the orders by date and calculate the average number of pizzas ordered per day.
SELECT 
    AVG(total_order)
FROM
    (SELECT 
        orders.order_date,
            SUM(order_details.quantity) AS total_order
    FROM
        orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY orders.order_date) AS order_perday
;