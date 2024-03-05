SELECT year(order_date) AS order_year,SUM(unit_price * quantity) AS total_sales
FROM orders
INNER JOIN order_details ON orders.order_id = order_details.order_id
inner join products on order_details.product_id=products.product_id
WHERE YEAR(order_date)
group by YEAR(order_date)