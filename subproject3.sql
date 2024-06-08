create database onlinebookstore;
use onlinebookstore;

create table customers (customer_id int primary key, customer_name varchar(25),
city varchar(25));
insert into customers (customer_id,customer_name,city) values (1,"john smith", "new york");
insert into customers (customer_id,customer_name,city) values (2,"jane doe", "los angeles");
insert into customers (customer_id,customer_name,city) values (3,"bob johnson", "chicago");

create table orders (order_id int primary key, customer_id int, product varchar(25), 
quantity smallint, price int);
insert into orders (order_id,customer_id, product,quantity,price) values (1,1,"laptop",2,340);
insert into orders (order_id,customer_id, product,quantity,price) values (2,1,"printer",1,240);
insert into orders (order_id,customer_id, product,quantity,price) values (3,2,"smartphone",3,70);
insert into orders (order_id,customer_id, product,quantity,price) values (4,3,"tablet",2,80);

select * from orders;

select * from customers;

select c.customer_id, c.customer_name,o.order_id, o.product,o.quantity, o.price 
from customers c
inner join orders o
on c.customer_id=o.customer_id
where o.price>100;

select c.customer_id, c.customer_name,o.order_id, o.product,o.quantity, o.price 
from customers c
inner join orders o
on c.customer_id=o.customer_id
where c.customer_name="john smith";

select o.order_id, (quantity*price) as amount
from customers c
inner join orders o
on c.customer_id=o.customer_id
where o.quantity>2;