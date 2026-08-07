select 
id, 
date_format(created_at, 'yyyy-mm-dd') as order_date,    
user_id, 
product_id, 
quantity, 
unit_price, 
quantity* unit_price as order_amount
from 
{{ ref('bronze_orders') }}