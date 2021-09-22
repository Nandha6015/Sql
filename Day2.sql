
update student_details set marks=400 where id='1';

select * from student_details;

alter table student_details add results varchar(10);

alter table student_details drop results;

alter table student_details modify results int;

alter table student_details modify results varchar(10);

select * from student_details;

select * from student_details where results='fail';

select * from student_details s, dept d where s.results= 'fail' and s.deptId= d.deptId;

delete from dept where deptId=1;

drop table dept;

select * from salary;

insert into salary(name, salary) values('ali',30000),('giri',40000),('rahul',50000);

insert into salary values(1,'anandh',30000);

create table sales( salesId int not null primary key, salesName varchar(20), address varchar(20));

create table order_sales( id int primary key, productName varchar(15), address varchar(15), salesId int, constraint foreign key (salesid) references sales(salesid) );

select * from sales;

select * from order_sales;

delete from sales where salesId=1; 

select distinct  salesName, id, productName from sales s , order_sales o where s.salesId= o.salesId and s.salesName= 'ajay';

select * from sales s , order_sales o where s.salesId= o.salesId and s.salesName= 'ajay';

select s.salesid,s.salesName,s.address,p.id, p.productName from sales s inner join order_sales p on s.salesId=p.salesId;

select * from sales s inner join order_sales p on s.salesId=p.salesId;

select * from order_sales where salesId= (select salesId from sales where salesName= 'ajay');

select s.salesId,s.salesName,s.address,p.id, p.productName from sales s left join order_sales p on s.salesId=p.salesId;

select * from sales s left join order_sales p on s.salesId=p.salesId;

select s.salesId,s.salesName,s.address,p.id, p.productName from sales s right join order_sales p on s.salesId=p.salesId;

select * from sales s right join order_sales p on s.salesId=p.salesId; 