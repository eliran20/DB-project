--Percentage of sales from inputed delivery company
select city_name, ROUND(selected_company / total_companies, 2) as "Sales Percentage"
from 
       (select city_name, count(city_name) as selected_company
       from shop natural join sale natural join delivery
       where Company = &<name = Delivery_Company list = "'10bis', 'Wolt', 'Private', 'Uber Eats'">
       group by city_name)
natural join
        (select city_name, count(city_name) as total_companies
        from shop natural join sale natural join delivery
        group by city_name)
order by "Sales Percentage" desc;
   
