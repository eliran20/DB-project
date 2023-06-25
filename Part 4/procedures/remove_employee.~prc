
-- this procedure deletes employee from EMPLOYEE table (employment dismissal)
create or replace procedure remove_employee(employee_id_num NUMBER) is
   tot_emps NUMBER;
begin
  
  DELETE FROM employee
  WHERE employee.employee_id = remove_employee.employee_id_num;
  
  -- total number of employees
  select count(EMPLOYEE.EMPLOYEE_ID) 
  into tot_emps  
  from EMPLOYEE;
  
  -- display total number of employees
  dbms_output.put_line( 'Total employees = ' || TO_CHAR(tot_emps)); 
  
         
    
end remove_employee;
/
