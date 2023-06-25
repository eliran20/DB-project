CREATE TABLE Product
(
  Product_ID INT NOT NULL,
  Amount_In_Stock INT NOT NULL,
  Price FLOAT NOT NULL,
  Name VARCHAR(20) NOT NULL,
  PRIMARY KEY (Product_ID)
);

CREATE TABLE Area
(
  Area_ID INT NOT NULL,
  Area_Name VARCHAR(20) NOT NULL,
  PRIMARY KEY (Area_ID)
);

CREATE TABLE City
(
  City_Name VARCHAR(20) NOT NULL,
  Area_ID INT NOT NULL,
  PRIMARY KEY (City_Name),
  FOREIGN KEY (Area_ID) REFERENCES Area(Area_ID)
);

CREATE TABLE Supplier
(
  Supplier_ID INT NOT NULL,
  Phone_Number INT NOT NULL,
  First_Name VARCHAR(20) NOT NULL,
  Last_Name VARCHAR(20) NOT NULL,
  PRIMARY KEY (Supplier_ID)
);

CREATE TABLE Employee_Shift_Log
(
  Start_DateTime DATE NOT NULL,
  End_DateTime DATE NOT NULL,
  Shift_ID INT NOT NULL,
  PRIMARY KEY (Shift_ID)
);

CREATE TABLE Supply
(
  DateTime DATE NOT NULL,
  Amount INT NOT NULL,
  Supplier_ID INT NOT NULL,
  Product_ID INT NOT NULL,
  PRIMARY KEY (Supplier_ID, Product_ID),
  FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID),
  FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

CREATE TABLE Shop
(
  Shop_ID INT NOT NULL,
  Open_Time DATE NOT NULL,
  Close_Time DATE NOT NULL,
  City_Name VARCHAR(20) NOT NULL,
  PRIMARY KEY (Shop_ID),
  FOREIGN KEY (City_Name) REFERENCES City(City_Name)
);

CREATE TABLE Employee
(
  Employee_ID INT NOT NULL,
  First_Name VARCHAR(20) NOT NULL,
  Last_Name VARCHAR(20) NOT NULL,
  Phone_Number INT NOT NULL,
  Address VARCHAR(30) NOT NULL,
  Salary FLOAT NOT NULL,
  Shop_ID INT NOT NULL,
  PRIMARY KEY (Employee_ID),
  FOREIGN KEY (Shop_ID) REFERENCES Shop(Shop_ID)
);

CREATE TABLE Sale
(
  Sale_ID INT NOT NULL,
  DateTime DATE NOT NULL,
  Amount FLOAT NOT NULL,
  Shop_ID INT NOT NULL,
  PRIMARY KEY (Sale_ID),
  FOREIGN KEY (Shop_ID) REFERENCES Shop(Shop_ID)
);

CREATE TABLE Item
(
  Serial_Number INT NOT NULL,
  Product_ID INT NOT NULL,
  Sale_ID INT NOT NULL,
  PRIMARY KEY (Serial_Number),
  FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID),
  FOREIGN KEY (Sale_ID) REFERENCES Sale(Sale_ID)
);

CREATE TABLE Delivery
(
  Address VARCHAR(30) NOT NULL,
  Company VARCHAR(20) NOT NULL,
  Contact_Phone INT NOT NULL,
  Delivery_ID INT NOT NULL,
  Sale_ID INT NOT NULL,
  PRIMARY KEY (Delivery_ID),
  FOREIGN KEY (Sale_ID) REFERENCES Sale(Sale_ID)
);

CREATE TABLE Shift
(
  Shift_ID INT NOT NULL,
  Employee_ID INT NOT NULL,
  PRIMARY KEY (Shift_ID, Employee_ID),
  FOREIGN KEY (Shift_ID) REFERENCES Employee_Shift_Log(Shift_ID),
  FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);
