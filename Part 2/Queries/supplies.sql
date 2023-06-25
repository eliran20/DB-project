--ALL SUPPLIES FROM THE LAST DECADE
select datetime, first_name , last_name ,phone_number ,product_id, product.name , amount
from supply natural join supplier natural join product 
where datetime between date '2010-01-01' and date '2020-01-01'
order by datetime;

