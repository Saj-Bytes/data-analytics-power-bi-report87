SELECT column_name
FROM information_schema.columns 
WHERE table_schema = 'public'  -- usually 'public'
AND table_name = 'dim_products'

SELECT column_name
FROM information_schema.columns 
WHERE table_schema = 'public'  -- usually 'public'
AND table_name = 'dim_stores'

SELECT column_name 
FROM information_schema.columns 
WHERE table_schema = 'public'  -- usually 'public'
AND table_name = 'dim_users'

SELECT column_name
FROM information_schema.columns 
WHERE table_schema = 'public'  -- usually 'public'
AND table_name = 'temp1'