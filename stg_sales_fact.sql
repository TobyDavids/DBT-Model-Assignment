-- models/staging/stg_sales_fact.sql

WITH source AS (
    SELECT * FROM {{ source('fufu_republic', 'sales_fact_seed') }}
)
SELECT
    sales_id,
    customer_id,
    dining_id,
    payment_id,
    menu_id,
    promotion_id,
    location_id,
    unit_price,
    qty
FROM source;
