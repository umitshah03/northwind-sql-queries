select employees.first_name,employees.last_name,count(orders.order_id) AS Numberoforders,
case
when count(orders.order_id)>100 then 'High_Performing'
when count(orders.order_id)>50 then 'medium_Performing'
else 'lower_Performing'
end as performance_category
from employees
inner join orders on employees.employee_id=orders.employee_id
GROUP BY first_name
order by first_name
