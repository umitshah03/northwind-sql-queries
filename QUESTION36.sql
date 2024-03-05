select customers.company_name,sum(quantity*unit_price) AS totalcost,
case
when sum(quantity*unit_price)>5000 then 'high_value'
when sum(quantity*unit_price)>1000 then 'medium_value'
else 'low_value'
end as customer_class
from customers
inner join orders on customers.customer_id=orders.customer_id
inner join order_details on orders.order_id=order_details.order_id
inner join products on order_details.product_id=products.product_id
GROUP BY customers.customer_id, customers.company_name;