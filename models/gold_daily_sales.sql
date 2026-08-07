select 
p.id,
p.title,
p.category,
p.vendor,
u.city,
u.sales_channel
from
{{ref('silver_orders')}} o
left join {{ref('bronze_products')}} p
on o.product_id = p.id 
left join {{ref('silver_users')}} u
on o.user_id = u.id
group by all