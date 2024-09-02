
/* Get tables from a db*/
SELECT * 
FROM information_schema.tables
WHERE table_schema = 'public' and table_type = 'BASE TABLE';


/* Get column names from a table */

SELECT * 
FROM information_schema.columns 
WHERE table_schema = 'public'  -- usually 'public'
AND table_name = 'orders_powerbi'