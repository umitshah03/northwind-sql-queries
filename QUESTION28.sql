select categories.category_id, categories.category_name, count(order_id) as most_popular_orders
from order_details
inner join products on order_details.product_id=products.product_id
inner join categories on products.category_id=categories.category_id
group by  category_name
order by most_popular_orders desc
limit 3
