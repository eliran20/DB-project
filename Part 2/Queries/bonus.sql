
--CALCULATING 10% BONUS TO EMPLOYEES THAT SATISFY BONUS REQUIREMENTS.
select employee_id, first_name, last_name, phone_number, address, city_name, salary as "Salary Before Bonus", salary*1.1 as "Salary After Bonus"
from employee natural join shop natural join city
where salary < all (select avg(salary)
                    from employee)
      and city_name not in (select city_name
                            from employee natural join shop natural join city
                            group by city_name
                            having avg(salary) > 50)
order by salary desc;
