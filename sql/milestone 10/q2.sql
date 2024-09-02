
/*Which month in 2022 has had the highest revenue? */

/* filters for the year 2022*/
SELECT *
FROM orders_powerbi
WHERE EXTRACT(YEAR FROM "Order Date"::TIMESTAMP) = 2022;


/* joins the 2 tables */
SELECT 
DATE(o."Order Date") AS "Date",
("Product Quantity" * "sale_price") AS "Revenue"
FROM "orders_powerbi" o
JOIN "dim_products" p
ON o.product_code = p.product_code



/* Groups and orders rows by revenue in descending order and shows values for 2022*/

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


