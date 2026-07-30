select 
id, 
date_format(created_at, 'yyyy-mm-dd') as created_at,
year(birth_date) as birth_year,
city,
source as sales_channel
from 
{{ref('bronze_users')}}