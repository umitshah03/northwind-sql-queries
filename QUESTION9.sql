select contact_name
from customers
left join orders on customers.customer_id=orders.customer_id
--inner join order_details on orders.order_id=order_details.order_id
where order_id is null;
