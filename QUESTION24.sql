select order_id,sum(unit_price*quantity) as total_cost
from order_details
inner join products on products.product_id=order_details.product_id
group by order_id
order by total_cost desc
limit 1
