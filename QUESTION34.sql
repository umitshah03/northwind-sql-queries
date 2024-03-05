SELECT customer_id,COUNT(DISTINCT category_id) AS num_categories_ordered
FROM 
(SELECT orders.customer_id,products.category_id
FROM orders 
INNER JOIN order_details ON orders.order_id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.product_id
GROUP BY orders.customer_id,products.category_id
) AS customer_category_orders
GROUP BY customer_id
HAVING COUNT(DISTINCT category_id) = (SELECT COUNT(*) FROM categories);