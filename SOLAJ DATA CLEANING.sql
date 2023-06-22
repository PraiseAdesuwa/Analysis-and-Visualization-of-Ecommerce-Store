set sql_safe_updates = 0;

desc customer;
select * from categories; 
select * from customer;

--- FIND OUT ALL "Ã­" ----
select CustomerID, Customer_name
from customer
where customer_name like "%Ã­%";

---- REPLACE ALL "Ã­" -----
update customer
set Customer_name = replace(Customer_name, "Ã­", "í");

---- REPLACE ALL "Ã©" -----
update customer
set City = replace(Customer_name, "Ã©", "e"),
	Customer_name = replace(Customer_name, "Ã©", "e" ),
    Contact_name = replace();
---- REMOVE WHITE SPACES ------
update customer
set Customer_name = trim(Customer_name),
     Contact_name = trim(Contact_name),
     Address = trim(Address),
     City = trim(City),
     postal_code = trim(postal_code),
     Country = trim(Country);

select * from employees;
select * from order_details;
select * from orders;
select * from product;
select * from shippers;
select * from supplier;