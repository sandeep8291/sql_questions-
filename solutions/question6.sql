-- Join the necessary tables to find the total quantity of each pizza category ordered.
SELECT 
    pizza_types.name, SUM(quantity) AS count
FROM
    pizza_types
        LEFT JOIN
    pizzas USING (pizza_type_id)
        LEFT JOIN
    order_details USING (pizza_id)
GROUP BY name
ORDER BY count DESC
LIMIT 5;