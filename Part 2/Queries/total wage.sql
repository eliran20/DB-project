--Total wage for all employees over tha past decade
select employee_id, first_name, last_name, salary, (salary * total_hours) as wage
from
       (select employee_id, first_name, last_name, salary, start_datetime, sum(hours) as total_hours
        from employee natural join shift natural join employee_shift_log
        group by employee_ID, first_name,last_name, salary, start_datetime)
where start_datetime >= to_date('01/01/2010', 'dd/mm/yyyy') 
      and start_datetime <= to_date('01/01/2020', 'dd/mm/yyyy')
order by wage desc;

