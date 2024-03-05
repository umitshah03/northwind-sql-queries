select suppliers.supplier_id,suppliers.contact_name,count(order_id)as Total_sold_products from suppliers
inner join products on products.supplier_id=suppliers.supplier_id
inner join order_details on order_details.product_id=products.product_id
group by contact_name
order by Total_sold_products desc
limit 5;