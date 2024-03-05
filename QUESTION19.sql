select contact_name,(quantity*unit_price) AS totalcost
from customers
inner join orders on customers.customer_id=orders.customer_id
inner join order_details on orders.order_id=order_details.order_id
inner join products on order_details.product_id=products.product_id
where totalcost>5000
order by totalcost DESC;