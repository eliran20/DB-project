create or replace trigger delete_shop
  before delete on shop
  for each row
declare
  min_shop number;
begin
 select shop_id
 into min_shop
 from employee
 where shop_id <> :new.shop_id
 group by shop_id
 having count(employee_id) = (select min(count(employee_id)) 
                              from employee
                              group by shop_id);
  
  update employee
  set shop_id = min_shop
  where shop_id = :new.shop_id;
end ;
/
create or replace trigger delete_shop
  before delete on shop
  for each row
declare
  min_shop number;
begin
 select shop_id
 into min_shop
 from employee
 where shop_id <> :new.shop_id
 group by shop_id
 having count(employee_id) = (select min(count(employee_id)) 
                              from employee
                              group by shop_id);
  
  update employee
  set shop_id = min_shop
  where shop_id = :new.shop_id;
end ;
/
create or replace trigger delete_shop
  before delete on shop
  for each row
declare
  min_shop number;
begin
 select shop_id
 into min_shop
 from employee
 where shop_id <> :new.shop_id
 group by shop_id
 having count(employee_id) = (select min(count(employee_id)) 
                              from employee
                              group by shop_id);
  
  update employee
  set shop_id = min_shop
  where shop_id = :new.shop_id;
end ;
/
create or replace trigger delete_shop
  before delete on shop
  for each row
declare
  min_shop number;
begin
 select shop_id
 into min_shop
 from employee
 where shop_id <> :new.shop_id
 group by shop_id
 having count(employee_id) = (select min(count(employee_id)) 
                              from employee
                              group by shop_id);
  
  update employee
  set shop_id = min_shop
  where shop_id = :new.shop_id;
end ;
/
