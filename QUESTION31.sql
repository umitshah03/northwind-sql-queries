select customers.customer_id,customers.contact_name,sum(quantity) as total_products_ordered from customers
inner join orders on orders.customer_id=customers.customer_id
inner join order_details on order_details.order_id=orders.order_id
group by contact_name
order by total_products_ordered desc
limit 3;