SELECT date_date,
orders_id,
revenue,
quantity,
cost,
margin,
(margin+shipping_fee-logcost-ship_cost)as operational_margin
FROM{{ref('int_orders_margin')}}
LEFT JOIN {{ref('stg_raw__ship')}}
USING(orders_id)
GROUP BY orders_id, date_date,revenue,quantity,cost, margin,operational_margin
