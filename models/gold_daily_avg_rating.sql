select 
created_at, product_id, avg(rating) as avg_rating
from 
{{ref('bronze_reviews')}} group by created_at, product_id
order by created_at, product_id