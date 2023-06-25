-- this procedure changes the opening time and closing time to the standard company operation hours.
create or replace procedure shop_time_update(shop_id_num NUMBER) is
 cty_name varchar2(50);
begin
  update SHOP 
  set SHOP.OPEN_TIME = '9:00 AM' , SHOP.CLOSE_TIME = '11:00 PM'
  where SHOP.SHOP_ID = shop_time_update.shop_id_num;
       
     -- total number of employees
  select SHOP.City_Name 
  into cty_name  
  from SHOP
  where SHOP.SHOP_ID = shop_id_num;
  
  dbms_output.put_line( 'Updated hours for shop ' || TO_CHAR( shop_id_num ) || ' in city ' || cty_name );
       
end shop_time_update;
/
