select 
--orders
o.customerid, 
--customers
c.CustomerName,c.Segment,c.Country,c.State,
--product
p.Category,p.ProductID,p.ProductName,p.SubCategory,
ordersellingprice - ordercostprice as oderprofit
from orders o
left join {{ ref('raw_customers') }} as c 
on c.customerid = o.customerid
left join {{ ref('raw_products') }} p 
on p.productid=o.productid