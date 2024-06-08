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

create database ablejobs1; 
use ablejobs1;
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
where person_name not in ("a" and "l");

select * from sales2
where cust_name like "b%";

select * from sales2
where cust_name like "%n";

select * from sales1
where person_name like "n__l%";

create database ablejobs1;
use ablejobs1;
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

create Table sales1( salesman_id int primary key , person_name varchar(25), city varchar(25), 
commission decimal (3,2));

insert into sales1(salesman_id,person_name,city,commission) values(5001,"James hoog","newyork",0.15);
insert into sales1(salesman_id,person_name,city,commission) values(5002,"Nail knite","paris",0.13);
insert into sales1(salesman_id,person_name,city,commission) values(5005,"Pit alex","london",0.11);
insert into sales1(salesman_id,person_name,city,commission) values(5006,"Mc lyon","paris",0.14);
insert into sales1(salesman_id,person_name,city,commission) values(5007,"paul adem","rome",0.13);
insert into sales1(salesman_id,person_name,city,commission) values(5003,"Lauson hen","san jose",0.12);


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