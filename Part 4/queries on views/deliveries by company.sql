
select company , count(delivery_id)
from shop_sales_delivery
group by company
