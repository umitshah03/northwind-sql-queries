select order_id, avg(quantity) as average_quantity
from order_details
group by order_id
