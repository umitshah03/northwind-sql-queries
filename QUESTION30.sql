select employees.employee_id,first_name,last_name,count(order_id) as most_orders
from employees
inner join orders on orders.employee_id=employees.employee_id
WHERE YEAR(order_date) = 2016
GROUP BY MONTH(order_date)=8
order by most_orders desc
limit 1