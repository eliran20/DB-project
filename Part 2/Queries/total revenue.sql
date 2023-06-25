    
-- TOTAL PRICE OF ALL SALES
select city_name, SUM(PRICE) as "Total Revenue", COUNT(city_name) as "Num of Sales"
from item natural join product natural join sale natural join shop
where Datetime >= TO_DATE('01/01/2015', 'dd/mm/yyyy')
group by city_name
ORDER BY count(city_name) desc;
