WITH tmp AS (SELECT order_id, quantity FROM order_details WHERE quantity > 10)
SELECT order_id, AVG(quantity) avg_quantity 
FROM tmp 
GROUP BY order_id;