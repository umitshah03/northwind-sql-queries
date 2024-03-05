select employees.employee_id,first_name,last_name,count(orders.order_id) as total_order
from employees
inner join orders on employees.employee_id=orders.employee_id
group by employees.employee_id
having count(orders.order_id)>100
