select employees.employee_id,employees.first_name,employees.last_name,((quantity*unit_price)-discount)
 as total_revenue
 from employees
inner join orders on employees.employee_id=orders.employee_id
inner join order_details on orders.order_id=order_details.order_id
inner join products on order_details.product_id=products.product_id