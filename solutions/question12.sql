-- Analyze the cumulative revenue generated over time.
select order_date,
 sum(revenue) over(order by order_date) as cumsum
from 
  (select orders.order_date,
      sum(order_details.quantity*pizzas.price) as revenue
   from order_details
    inner join orders
     on order_details.order_id=orders.order_id
    inner join pizzas 
     on order_details.pizza_id=pizzas.pizza_id
   group by orders.order_date) as sales;