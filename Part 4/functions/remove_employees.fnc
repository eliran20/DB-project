create or replace function pay_employees(shop_id_param NUMBER) return number  is

  to_pay float;
  cur_city_name varchar2(50);
  
begin
  select sum(employee.salary)*8.0*30.0
  into to_pay
  from employee
  where employee.shop_id = shop_id_param;
  
  select city_name
  into cur_city_name
  from shop
  where shop_id = shop_id_param;
  
  dbms_output.put_line('Need to pay ' || TO_CHAR(to_pay) || '$ to employees in shop ' || TO_CHAR(shop_id_param) || 
  ' from city ' || cur_city_name);

  return(to_pay); 
end pay_employees;
/
