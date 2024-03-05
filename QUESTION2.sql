select category_name, description from categories
order by category_nameSELECT company_name
FROM 
    suppliers 
INNER JOIN 
    products ON suppliers.supplier_id = products.supplier_id
INNER JOIN 
    categories ON products.category_id = categories.category_id
WHERE 
    categories.category_name = 'Seafood';