-- List the top 5 most ordered pizza types along with their quantities.
SELECT 
    pizza_types.name AS name,
    COUNT(order_details.quantity) AS count
FROM
    pizza_types
        INNER JOIN
    pizzas USING (pizza_type_id)
        INNER JOIN
    order_details USING (pizza_id)
GROUP BY name
ORDER BY count DESC
LIMIT 5;