
/*How many staff are there in all of the UK stores?
*/

SELECT COUNT('staff numbers')
FROM dim_stores
WHERE country_code = 'GB'