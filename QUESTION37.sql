select products.product_name,sum(quantity) AS totalsales,
case
when sum(quantity)>1000 then 'high_sales'
when sum(quantity)>500 then 'medium_sales'
else 'lower_sales'
end as sales_category
from order_details
inner join products on order_details.product_id=products.product_id
GROUP BY products.product_name
order by products.product_name