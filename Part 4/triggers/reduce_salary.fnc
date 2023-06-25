create or replace trigger reduce_salary
 before update of salary on EMPLOYEE
 for each row 
declare   
begin
  if :new.salary > 50.0 then
       :new.salary  := :new.salary * 0.9;
  end if;
end reduce_salary;
/
create or replace trigger reduce_salary
 before update of salary on EMPLOYEE
 for each row 
declare   
begin
  

   if  :new.salary > 50.0 then
     :new.salary  := :new.salary * 0.9;
   end if;
   
end reduce_salary;
/
create or replace trigger reduce_salary
 before update of salary on EMPLOYEE
 for each row 
declare   
begin
   if :new.salary > 50.0 then
       :new.salary  := :new.salary * 0.9;
   end if;
end reduce_salary;
/
create or replace trigger reduce_salary
 before update of salary on EMPLOYEE
 for each row 
declare   
begin
   if :new.salary > 50.0 then
       :new.salary  := :new.salary * 0.9;
   end if;
end reduce_salary;
/
