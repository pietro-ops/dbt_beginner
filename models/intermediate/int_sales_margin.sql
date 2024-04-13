SELECT *
FROM {{ ref('stg_raw_sales') }} 
JOIN {{ ref('stg_raw_product') }} 
USING(products_id)