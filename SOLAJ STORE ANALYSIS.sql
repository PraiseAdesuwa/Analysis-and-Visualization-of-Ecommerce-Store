
--- TOTAL NUMBER OF PRODUCT SOLD SO FAR----
select count(*) as "Total Number of Product"
from product;

--- 2. Total Number of Revenue---
select * from product;
select * from order_details;

select round(sum(price*quantity),2) as "Total Revenue"
from order_details as od
inner join product as p on p.ProductID = od.ProductID;