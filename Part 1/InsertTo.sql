
                     
insert into Area (Area_Id, Area_Name)
values (02,'Jer County');

insert into City (City_Name, Area_Id)
values ('Jerusalem', 02);

insert into Shop (Shop_Id,
                  Open_Time,
                  Close_Time,
                  City_Name)
values (11,TO_DATE('08','HH24'),TO_DATE( '22','HH24'),'Jerusalem');            

insert into Employee (Employee_Id,
                      First_Name,
                      Last_Name,
                      Phone_Number,
                      Address,
                      Salary,
                      Shop_Id)
values (123,'Ido','Awes',0303030303,'shahal 3',30.0,11);  

insert into Area (Area_Id, Area_Name)
values (03,'Center');

insert into City (City_Name, Area_Id)
values ('Tel Aviv', 03);

insert into Shop (Shop_Id,
                  Open_Time,
                  Close_Time,
                  City_Name)
values (12,TO_DATE('08','HH24'),TO_DATE( '22','HH24'),'Tel Aviv');            

insert into Employee (Employee_Id,
                      First_Name,
                      Last_Name,
                      Phone_Number,
                      Address,
                      Salary,
                      Shop_Id)
values (456,'Aaron','Serri',02020269,'alenbi 39',35.0,12);  



insert into Product (Product_Id,
                     Amount_In_Stock,
                     Price,
                     Name)
values (001,10,20,'Mini Pizza');


insert into Product (Product_Id,
                     Amount_In_Stock,
                     Price,
                     Name)
values (002,10,50,'Medium Pizza');

                     


