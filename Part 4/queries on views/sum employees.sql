
select sum("Total Employees") 
from (select *
      from number_of_employees_in_city 
      where "Average Salary" > 40)

