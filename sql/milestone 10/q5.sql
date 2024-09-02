
/* Q5:Which product category generated the most profit for the "Wiltshire, UK" region in 2021? */


/* Total Sales, % of total sales and count of orders */


SELECT
    p."category" AS "Product Category",
    SUM((p."sale_price" - p."cost_price") * o."Product Quantity") AS "Total Profit"
FROM
    orders_powerbi o
JOIN
    dim_products p ON o."product_code" = p."product_code"
JOIN
    dim_stores s ON o."Store Code" = s."store code"
WHERE
    s."country_region" = 'Wiltshire'
    AND EXTRACT(YEAR FROM o."Order Date"::TIMESTAMP) = 2021
GROUP BY
    p."category"
ORDER BY
    "Total Profit" DESC
LIMIT 1;





