
 -- ALL EMPLOYEES THAT ARENT SUBSCRIBED TO A CERTAIN PHON COMPANY
select *
from employee
where phone_number not in (select phone_number
                           from employee
                           where phone_number like '%058-%')
order by employee_id;
 
