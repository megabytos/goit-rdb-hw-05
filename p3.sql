SELECT order_id, AVG(quantity) avg_quantity 
FROM (SELECT order_id, quantity FROM order_details WHERE quantity > 10) tmp 
GROUP BY order_id;