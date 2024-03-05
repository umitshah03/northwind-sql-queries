select employee_id,count(order_id)
from orders
group by employee_id