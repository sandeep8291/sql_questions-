-- Calculate the percentage contribution of each pizza type to total revenue.
select pizza_types.category, (round(sum(order_details.quantity*pizzas.price)/(SELECT 
    SUM(price * quantity) AS totalRevenue
FROM
    order_details
        INNER JOIN
    pizzas USING (pizza_id))*100)) as perdentage 
from pizzas
join order_details on
pizzas.pizza_id=order_details.pizza_id
join pizza_types on
pizzas.pizza_type_id=pizza_types.pizza_type_id
group by pizza_types.category
order by pizza_types.category;

