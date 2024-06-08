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

