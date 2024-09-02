
/* Q4:Create a view where the rows are the store types and the columns are 
the total sales, percentage of total sales and the count of orders */

/* Total sales for each store type*/

SELECT 
    s."store_type",
    SUM(o."Product Quantity" * p."sale_price") AS "Revenue"
FROM orders_powerbi as o

JOIN dim_products p ON o.product_code = p.product_code
JOIN dim_stores s ON o."Store Code" = s."store code"
GROUP BY
    s."store_type"


/*Percentage of total sales */

SELECT 
    s."store_type",
    SUM(o."Product Quantity" * p."sale_price") *100.0 / 
    (SELECT SUM(o2."Product Quantity" * p2."sale_price") 
         FROM orders_powerbi o2
         JOIN dim_products p2 ON o2.product_code = p2.product_code) AS "Percentage of Total Sales"
FROM 
    orders_powerbi o
JOIN 
    dim_products p ON o.product_code = p.product_code
JOIN 
    dim_stores s ON o."Store Code" = s."store code"
GROUP BY 
    s."store_type";


/* Total Sales, % of total sales and count of orders */


CREATE VIEW "Store Sales Summary" AS
SELECT 
    s."store_type" AS "Store Type",
    SUM(o."Product Quantity" * p."sale_price") AS "Total Sales",
    SUM(o."Product Quantity" * p."sale_price") * 100.0 / 
    (SELECT SUM(o2."Product Quantity" * p2."sale_price") 
     FROM orders_powerbi o2
     JOIN dim_products p2 ON o2.product_code = p2.product_code) AS "Percentage of Total Sales",
    COUNT(o."Store Code") AS "Count of Orders"
FROM 
    orders_powerbi o
JOIN 
    dim_products p ON o.product_code = p.product_code
JOIN 
    dim_stores s ON o."Store Code" = s."store code"
GROUP BY 
    s."store_type";





