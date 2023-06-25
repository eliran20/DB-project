
















CREATE VIEW Number_Of_Employees_in_City AS
SELECT city_name, count(employee_id) as "Total Employees", round(avg(salary), 2) as "Average Salary"
FROM shop natural join employee natural join city
group by city_name
having count(employee_id) >= 35
order by "Average Salary" desc;

select * from Number_Of_Employees_in_City
