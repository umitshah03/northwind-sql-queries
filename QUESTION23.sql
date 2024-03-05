SELECT ship_country, COUNT(*) AS occurrences
FROM orders
GROUP BY ship_country
ORDER BY occurrences DESC
LIMIT 1;
