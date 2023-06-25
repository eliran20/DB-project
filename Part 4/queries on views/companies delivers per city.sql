





select city_name ,company, count(delivery_id)
from shop_sales_delivery
group by city_name, company
order by city_name

