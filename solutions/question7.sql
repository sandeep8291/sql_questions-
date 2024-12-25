-- Determine the top 3 most ordered pizza types based on revenue.
SELECT 
    pizza_types.name, SUM(price * quantity) AS count
FROM
    pizza_types
        INNER JOIN
    pizzas USING (pizza_type_id)
        INNER JOIN
    order_details USING (pizza_id)
GROUP BY pizza_types.name
ORDER BY count DESC
LIMIT 3
;