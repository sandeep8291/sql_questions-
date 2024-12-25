create database pizza;
use pizza;
-- Retrieve the total number of orders placed.
SELECT 
    COUNT(order_id) AS numberOfOrders
FROM
    orders;
