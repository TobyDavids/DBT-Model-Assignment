-- models/dimensions/dim_product.sql

WITH base AS (
    SELECT * FROM {{ ref('stg_products') }}
)
SELECT
    menu_id,
    menu,
    price,
    category,
    stock_level,
    re_order_level,
    expiry_date
FROM base;
