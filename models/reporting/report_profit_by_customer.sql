select
    customerid,
    segment,
    country,
    sum(oderprofit) as profit
from {{ ref('stg_orders') }}
group by 
    customerid,
    segment,
    country
