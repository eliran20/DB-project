
-- TOTAL EMPLOYEES IN EACH CITY AND THE AVERAGE SALARY IN EACH CITY
select city_name, count(employee_id) as "Total Employees", round(avg(salary), 2) as "Average Salary"
from shop natural join employee natural join city
group by city_name
having count(employee_id) >= 35
order by "Average Salary" desc;

