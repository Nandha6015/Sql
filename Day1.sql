create database thbs;
use thbs;

create table student_details( id int not null primary key, name varchar(20), marks int , deptId int);

select * from student_details;

insert into student_details values(1,'akash',410, 1),(2, 'prakash', 350, 2),(3, 'kishore', 180, 1);

select * from student_details where marks >200 and marks <400;

select * from student_details where marks >0 or marks <200;

select * from student_details where name= 'akash';

select id as student_roll_number from student_details;

select * from student_details order by id asc;

select * from student_details order by id desc;

select * from student_details where id>1 order by id desc;

select count(*) from student_details;

select count(*) as total from student_details;

select distinct id from student_details;

create table dept( deptId int, deptName varchar(10) );

insert into dept values( 1, 'computer' ), ( 2, 'maths' );

select * from dept;

select * from dept d, student_details s  where s.deptId =1;

select s.* from dept d, student_details s where s.marks >350 and d.deptName= 'maths' and s.deptId=d.deptId;

select deptId from dept where deptName= 'computer';

select * from student_details where deptId = (select deptId from dept where deptName= 'computer');

select deptId from dept where deptName='computer'|| deptName='maths';

select * from student_details where deptId in (select deptId from dept where deptName='computer'|| deptName='maths');

select * from student_details s, dept d where s.marks > 200 and d.deptName= 'maths';


