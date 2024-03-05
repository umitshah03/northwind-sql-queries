select category_name,avg(unit_price)
from products
inner join categories on categories.category_id=products.category_id
group by category_name