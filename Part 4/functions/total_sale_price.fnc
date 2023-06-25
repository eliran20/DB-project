create or replace function total_sale_price(shop_id_param NUMBER) return number  is

  total float;
  cur_city_name varchar2(50);
begin
  
  -- TOTAL PRICE OF ALL SALES IN SHOP
   select SUM(PRICE)
   into total
   from item natural join product natural join sale natural join shop
   where shop_id = shop_id_param;
   
   select city_name
   into cur_city_name
   from shop
   where shop_id = shop_id_param;
  
   dbms_output.put_line('total revenue from all sales in shop ' || TO_CHAR(shop_id_param) 
                          || ' from city ' || cur_city_name || ' is: $' || TO_CHAR(total));
   return(total);
end total_sale_price;
/
