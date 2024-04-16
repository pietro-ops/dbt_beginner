# Materialization from view to table

{{ config(materialized='table')}}

SELECT date_date,
COUNT(orders_id) AS nb_transactions,
SUM(revenue)AS tot_revenue,
SUM(margin) AS tot_margin,
SUM(operational_margin) AS tot_operational_margin,
SUM(revenue)/COUNT(orders_id)AS average_basket
FROM {{ref('int_orders_operational')}}
GROUP BY ALL

