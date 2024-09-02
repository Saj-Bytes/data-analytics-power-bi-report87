
/* Q3:Which German store type had the highest revenue for 2022? */

DE = Germany

/* Joining the 3 tables together */
SELECT 
    s."store code",
    s."address",
    SUM(o."Product Quantity" * p."sale_price") AS "Revenue"
FROM orders_powerbi o
JOIN dim_products p
ON o.product_code = p.product_code
JOIN dim_stores s
ON o."Store Code" = s."store code"
WHERE s.country_code = 'DE'
GROUP BY 
    s."store code", 
    s."address"

ORDER BY "Revenue" DESC
LIMIT 1



















SELECT 
    TO_CHAR(o."Order Date"::TIMESTAMP, 'YYYY-MM') AS year_month,
    SUM(o."Product Quantity" * p."sale_price") AS "Revenue"
FROM "orders_powerbi" o
JOIN "dim_products" p
ON o.product_code = p.product_code
WHERE EXTRACT(YEAR FROM "Order Date"::TIMESTAMP) = 2022
GROUP BY
    year_month
ORDER BY
    "Revenue" DESC
LIMIT 1;




