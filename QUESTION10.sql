SELECT customers.customer_id,orders.order_id,employees.employee_id
FROM customers
INNER JOIN orders ON orders.customer_id = customers.customer_id
INNER JOIN employees ON employees.employee_id = orders.employee_id;