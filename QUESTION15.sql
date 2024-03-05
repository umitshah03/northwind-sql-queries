select sum((quantity*unit_price)-discount) as total_revenue
 from orders
inner join order_details on orders.order_id=order_details.order_id
inner join products on order_details.product_id=products.product_id
where order_date between '2016-01-01' and '2016-12-31'
