
-- Total Revenue of each product between 2 inputed dates
select product_id, name, price, amount_in_stock, sum(price) as "Total Revenue"
from item natural join product natural join sale
where datetime between &startdate_input and &enddate_input
group by product_id, name, price, amount_in_stock
order by "Total Revenue" desc;

