select products.product_name,categories.category_name,products.unit_price
from products
inner join categories on categories.category_id=products.category_id
where products.unit_price =
(select max(unit_price) 
 from products
 where categories.category_id=products.category_id)
