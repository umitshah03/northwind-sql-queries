select products.product_id,products.product_name, order_details.quantity from products
inner join order_details on products.product_id=order_details.product_id
