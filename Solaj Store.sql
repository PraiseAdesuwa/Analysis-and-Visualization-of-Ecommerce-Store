--- Solaj Store database
-- create a database
Create database Solaj;

-- use a database
use Solaj;

--- create a employee table
create table employees (
EmployeeID int not null,
FirstName varchar(255) default null,
LastName varchar(255) default null,
BirthDate date default null,
Photo varchar (255) default null,
Notes text
   );
   
-- create a customer table
create table customer (
CustomerID int not null,
Customer_name varchar(255) default null,
Contact_name varchar(255) default null,
Address varchar(255)default null,
City varchar(255) default null,
postal_code varchar (255) default null,
Country varchar(255) default null
 );
 
 --- CREATE TABLE 
  create table Orders (
  Order_id int not null,
  Customer_id int default null,
  EmployeeID int default null,
  OrderDate date default null,
  shipperID int default null
  );
  
  --- 
  create table Order_details(
  Order_detailID int not null,
  OrderID int default null,
  ProductID int default null,
  Quantity int default null
  );
  
  create table product (
  ProductID int not null,
  Product_name varchar(255) default null,
  SupplierID int default null,
  CategoryID int default null,
  unit varchar(255) default null,
  price Double default null
  );
  
  create table supplier(
  SupplierID int not null,
  Supplier_name varchar(255) default null,
  Contact_name varchar(255) default null,
  Address varchar(255) default null,
  City varchar(255) default null,
  Postal_code varchar(255) default null,
  Country varchar(255) default null,
  Phone varchar(255) default null
  );
  
  create table shippers (
  shipperID int not null,
  shipper_name varchar(255) default null,
  phone varchar(255) default null
  );
  
  create table categories(
  CategoryID int not null,
  Category_name varchar(255) default null,
  Description varchar(255)default null
  );
  
 select * from supplier;
 insert into product (productID, product_name, supplierID, categoryID, unit, price)
 values (77, 'Original Frankfurter grüne Soße', 12, 2, '12boxes', 13);
 
 --- -------STEP 2: LOAD ALL DATA INTO TABLES ---------
 -- Imorted data using load data waizard ----
 
 -- ----- STEP 3: ADD CONSTRAINT TO ALL TABLES ----
 
 alter table employees
 add primary key (EmployeeID);
 
 --- add a primary key to categories table
 alter table categories
 add primary key (categoryID);
 
 --- add a primary key to customer table
 alter table customer
 add primary key (customerID);
 
 --- add a primary key to order_details table
 alter table order_details
 add primary key (order_detailID);
 
 --- add a primary key to orders table
 alter table orders
 add primary key (Order_id);
 
 --- add a primary key to product table
 alter table product
 add primary key (productID);
 
 --- add a primary key to shippers table
 alter table shippers
 add primary key (shipperID);
 
 --- add a primary key to supplier table
 alter table supplier
 add primary key (supplierID);
 
 --- ADD FOREIGN KEYS TO TABLES 
 alter table orders
 add key customerID (customer_id),
 add key EmployeeID (EmployeeID),
 add key shipperID (shipperID);
 
 --- ADD FOREIGN KEY
 alter table orders
 add constraint foreign key (customer_id) references customer (customerID),
 add constraint foreign key (EmployeeID) references employees (EmployeeID),
 add constraint foreign key (shipperID) references shippers (shipperID);
 
 --- ADD FOREIGN KEY
 alter table order_details
 add constraint foreign key (orderID) references orders (order_id),
 add constraint foreign key (productID) references product (productID);
 
 --- ADD FOREIGN KEY
 alter table product
 add constraint foreign key (supplierID) references supplier (supplierID),
 add constraint foreign key (categoryID) references categories (categoryID);
 
  
select * from product;
select * from order_details;
desc orders;
