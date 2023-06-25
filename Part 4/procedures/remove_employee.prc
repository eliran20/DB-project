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
  dbms_output.put_line( 'Removed Employee. ID: '|| TO_CHAR(employee_id_num) || ' Total employees : ' || TO_CHAR(tot_emps)); 
  
         
    
end remove_employee;
/
