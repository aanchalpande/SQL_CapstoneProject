# SQL_CapstoneProject
                                                                             Queries on salesman and customer table
create database ablejobs1;
use ablejobs1;

create Table sales1( salesman_id int primary key , person_name varchar(25), city varchar(25), 
commission decimal (3,2));
insert into sales1(salesman_id,person_name,city,commission) values(5001,"James hoog","newyork",0.15);
insert into sales1(salesman_id,person_name,city,commission) values(5002,"Nail knite","paris",0.13);
insert into sales1(salesman_id,person_name,city,commission) values(5005,"Pit alex","london",0.11);
insert into sales1(salesman_id,person_name,city,commission) values(5006,"Mc lyon","paris",0.14);
insert into sales1(salesman_id,person_name,city,commission) values(5007,"paul adem","rome",0.13);
insert into sales1(salesman_id,person_name,city,commission) values(5003,"Lauson hen","san jose",0.12);

select * from sales1;

create Table sales2( customer_id int primary key , cust_name varchar(25), city varchar(25), 
grade int,salesman_id int);
insert into sales2(customer_id,cust_name,city,grade,salesman_id) values(3002,"Nick romando",
"newyork",100,5001);
insert into sales2(customer_id,cust_name,city,grade,salesman_id) values(3007,"Brad davis",
"newyork",200,5001);
insert into sales2(customer_id,cust_name,city,grade,salesman_id) values(3005,"Graham zusi",
"California",200,5002);
insert into sales2(customer_id,cust_name,city,grade,salesman_id) values(3008,"Julian green",
"london",300,5002);
insert into sales2(customer_id,cust_name,city,grade,salesman_id) values(3004,"Fabian johnson",
"paris",300,5006);
insert into sales2(customer_id,cust_name,city,grade,salesman_id) values(3009,"Geoff cameron",
"berlin",100,5003);
insert into sales2(customer_id,cust_name,city,grade,salesman_id) values(3003,"Jozy altidor",
"moscow",200,5007);

select * from sales2;

update sales1
set commission=0.22
where person_name= "pit alex";


update sales1
set city="paris"
where salesman_id=5003;

select * from sales1;

update sales2
set grade=300
where cust_name="Graham zusi";

update sales2
set city="london"
where customer_id=3009;

select * from sales2;

select salesman_id,person_name,city,commission from sales1
where (city= "paris" or city="rome");

select salesman_id,person_name,city,commission from sales1
where city not in ("paris", "rome");

select salesman_id,person_name,city,commission from sales1
where commission between 0.12 and 0.14;

select salesman_id,person_name,city,commission from sales1
where person_name like "l%a%";

select * from sales2
where cust_name like "b%";

select * from sales2
where cust_name like "%n";
select * from sales1
where person_name like "n__l%";

select s1.person_name as salesman , s2.cust_name as customer, s2.city
from sales2 s2
inner join sales1 s1  on s2.city = s1.city
order by s2.city;

select s1.person_name as salesman , s2.cust_name as customer, s2.city, s1.commission
from sales2 s2
inner join sales1 s1 
on s2.salesman_id = s1.salesman_id;

select  s2.cust_name as customer,s2.city ,s1.person_name as salesman ,  s1.commission, s1.city
from sales2 s2
inner join sales1 s1  on s2.salesman_id = s1.salesman_id
where s1.commission >0.12
order by s1.commission;

select  s2.cust_name as customer,s2.city ,s1.person_name as salesman ,  s1.commission, s1.city
from sales2 s2
inner join sales1 s1  on s2.salesman_id = s1.salesman_id
where s1.commission >0.12
and s1.city<>s2.city;
                                                                            Queries on Nobel  table
create database ablejobs3;
use ablejobs3;
create table nobel (years int , subjects varchar(25),winner varchar(25), country varchar(25), 
category varchar(25));

insert into nobel ( years,subjects,winner,country,category) values (1970, "physics","hannes alfavin",
 "sweden","scientist");
 insert into nobel ( years,subjects,winner,country,category) values (1970, "physics","louis neel",
 "france","scientist");
 insert into nobel ( years,subjects,winner,country,category) values (1970, "chemistry","luis fedrico leloir",
 "france","scientist");
 insert into nobel ( years,subjects,winner,country,category) values (1970, "physiology","ulf von euler",
 "sweden","scientist");
 insert into nobel ( years,subjects,winner,country,category) values (1970, "physics","bernard katz",
 "germany","scientist");
 insert into nobel ( years,subjects,winner,country,category) values (1970, "literature","aleksandr solzhenitsyn",
 "russia","linguist");
 insert into nobel ( years,subjects,winner,country,category) values (1970, "economics","paul samuelson",
 "USA","economist");
 insert into nobel ( years,subjects,winner,country,category) values (1970, "physiology","julius axelrod",
 "USA","scientist");
 insert into nobel ( years,subjects,winner,country,category) values (1971, "physics","dennis gabor",
 "hungary","scientist");
  insert into nobel ( years,subjects,winner,country,category) values (1971, "chemistry","gerhard herzberg",
 "germany","scientist");
  insert into nobel ( years,subjects,winner,country,category) values (1971, "peace","willy brandt",
 "germany","chancellor");
  insert into nobel ( years,subjects,winner,country,category) values (1971, "literature","pablo neruda",
 "chile","linguist");
  insert into nobel ( years,subjects,winner,country,category) values (1971, "economics","simon kuznets",
 "russia","economist");
  insert into nobel ( years,subjects,winner,country,category) values (1978, "peace","anwar al-sadat",
 "egypt","president");
  insert into nobel ( years,subjects,winner,country,category) values (1978, "peace","menachem begin",
 "isreal","prime minister");
 insert into nobel ( years,subjects,winner,country,category) values (1987, "chemistry","donald j.cram",
 "USA","scientist");
 insert into nobel ( years,subjects,winner,country,category) values (1987, "chemistry","jean-marie lehn",
 "france","scientist");
 insert into nobel ( years,subjects,winner,country,category) values (1987, "physiology","susumu tonegawa",
 "japan","scientist");
 insert into nobel ( years,subjects,winner,country,category) values (1994, "economics","reinhard selten",
 "germany","economist");
 insert into nobel ( years,subjects,winner,country,category) values (1994, "peace","yitzhak rabin",
 "isreal","prime minister");
 insert into nobel ( years,subjects,winner,country,category) values (1987, "physics","johannes georg bednorz",
 "germany","scientist");
 insert into nobel ( years,subjects,winner,country,category) values (1987, "literature","joseph brodsky",
 "russia","linguist");
  insert into nobel ( years,subjects,winner,country,category) values (1987, "economics","robert solow",
 "USA","economist");
  insert into nobel ( years,subjects,winner,country,category) values (1994, "literature","kenzaburo oe",
 "japan","linguist");
   
   select   years,subjects, winner from nobel
   where (years = "1970" or years="1987");
   
   select subjects, years, winner from nobel
   where years=1971
   and subjects="literature";
   
   select years, subjects from nobel
   where winner ="dennis gabor";
   
    select subjects, years, winner from nobel
    where years>1950
    and subjects="physics";

    select subjects, years, winner, country from nobel
    where years between 1965 and 1975
    and subjects="chemistry";
    
     select * from nobel
    where years>=1972
    and category="prime minister";

select subjects, years, winner, country from nobel
    where years between 1965 and 1975
    and subjects="chemistry";
    
     select * from nobel
    where years>=1972
    and category="prime minister";
    
    select * from nobel
    where winner like "louis%";
    
    select * from nobel
    where winner="Johannes Georg Bednorz";
    
    SELECT * FROM nobel  
    WHERE (subjects ='Physics' AND years=1970) 
    UNION (SELECT * FROM nobel WHERE (subjects ='Economics' AND years=1971));
                                                                                  Queries on orders table
create database ablejobs4;
use ablejobs4;
create  table orders (ord_no int, purch_amt varchar(40), ord_date date, customer_id int, salesman_id int);
insert into orders (ord_no , purch_amt , ord_date , customer_id ,salesman_id) values (70001, "150.5", "2012-10-05","3005", "5002");
insert into orders (ord_no , purch_amt , ord_date , customer_id ,salesman_id) values (70009, "270.65", "2012-09-10","3001", "5005");
insert into orders (ord_no , purch_amt , ord_date , customer_id ,salesman_id) values (70002, "65.26", "2012-10-05","3002", "5001");
insert into orders (ord_no , purch_amt , ord_date , customer_id ,salesman_id) values (70004, "110.5", "2012-08-17","3009", "5003");
insert into orders (ord_no , purch_amt , ord_date , customer_id ,salesman_id) values (70007, "948.5", "2012-09-10","3005", "5002");
insert into orders (ord_no , purch_amt , ord_date , customer_id ,salesman_id) values (70005, "2400.6", "2012-07-27","3007", "5001");
insert into orders (ord_no , purch_amt , ord_date , customer_id ,salesman_id) values (70008, "5760", "2012-09-10","3002", "5001");
insert into orders (ord_no , purch_amt , ord_date , customer_id ,salesman_id) values (70010, "1983.43", "2012-10-10","3004", "5006");
insert into orders (ord_no , purch_amt , ord_date , customer_id ,salesman_id) values (70003, "2480.4", "2012-10-10","3009", "5003");
insert into orders (ord_no , purch_amt , ord_date , customer_id ,salesman_id) values (70012, "250.45", "2012-06-27","3008", "5002");
insert into orders (ord_no , purch_amt , ord_date , customer_id ,salesman_id) values (70011, "75.29", "2012-08-19","3003", "5007");
insert into orders (ord_no , purch_amt , ord_date , customer_id ,salesman_id) values (70013, "3045.6", "2012-04-25","3002", "5001");
select * from orders;

select sum(purch_amt) as total_purchase_amount from orders;

select avg(purch_amt) as average_purchase_amount from orders;

select count(distinct customer_id) from orders;

select count(distinct salesman_id) from orders;

                                                                          Queries on customers and orders table
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
