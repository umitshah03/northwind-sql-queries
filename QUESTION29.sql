SELECT MONTH(order_date) AS order_month,SUM(unit_price * quantity) AS total_sales
FROM orders
INNER JOIN order_details ON orders.order_id = order_details.order_id
inner join products on order_details.product_id=products.product_id
WHERE YEAR(order_date) = 2016
GROUP BY MONTH(order_date)
ORDER BY order_month DESC
LIMIT 1;