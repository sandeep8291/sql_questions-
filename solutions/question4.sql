-- Identify the most common pizza size ordered.
SELECT DISTINCT
    size, COUNT(size) AS count
FROM
    pizzas
        INNER JOIN
    order_details USING (pizza_id)
GROUP BY size
ORDER BY count DESC
LIMIT 1;
