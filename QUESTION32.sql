select employees.employee_id,employees.first_name,employees.last_name,quantity
from employees
inner join orders on employees.employee_id=orders.employee_id
inner join order_details on orders.order_id=order_details.order_id
where quantity=0
group by employees.employee_id
order by quantity desc
