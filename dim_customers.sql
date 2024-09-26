-- models/dimensions/dim_customers.sql

WITH cte_product AS (
    SELECT * FROM {{ ref('stg_customers') }}
)
SELECT
    customer_id,
    first_name,
	last_name,
	address,
	loyalty_status,
	customer_segment 
 
FROM cte_product ;