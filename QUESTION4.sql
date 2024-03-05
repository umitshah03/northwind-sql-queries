select category_name,(quantity*unit_price)
as totalsales
from order_details
inner join products on order_details.product_id=products.product_id
inner join categories on products.category_id=categories.category_id
group by category_name