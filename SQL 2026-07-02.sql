use itvedant;
create table EmpInfo(
emp_id int primary key auto_increment,
emp_name varchar(20) not null,
email varchar(40) unique,
salary int check(salary between 15000 and 80000),
city varchar(20) check (city in('Mumbai','Pune','Nagpur','Nashik')),
state varchar(20) default 'Maharashtra',
created_at datetime default current_timestamp
);


alter table EmployeeInfo
add department varchar(30) not null;


select * from EmployeeInfo;

truncate table 	EmployeeInfo;




insert into EmployeeInfo(emp_name,email,salary,city,department) values('Sahil','sahil@1234','25000','Mumbai','IT');
insert into EmployeeInfo(emp_name,email,salary,city,department) values('Aditya','aditya@gmail','75000','Pune','IT'),('Suraj','Sumit@gmail','65000','Nashik','HR'),('rajesh','rajesh@gmail','68000','Mumbai','HR'),('prakash','prakash@gmail','35000','Pune','Finance'),('ayush','ayush@gmail','45000','Nashik','Finance');
select * from EmployeeInfo;

select department, sum(salary) as total from EmployeeInfo
group by department
order by total desc;

select
emp_name,
salary,
avg(salary) OVER() AS average_salary
FROM EmployeeInfo;

select
emp_name,
department,
salary,
avg(salary) OVER(partition by department) AS dept_avg
FROM EmployeeInfo;

select
emp_name,
department,
salary,
row_number() OVER(order by department desc) AS row_num
FROM EmployeeInfo;

select
emp_name,
department,
salary,
rank() OVER(order by department) AS rank_num
FROM EmployeeInfo;


select
emp_name,
department,
salary,
dense_rank() OVER(order by department desc) AS denserank_num
FROM EmployeeInfo;


create table posts(
user_id int,
post_id int,
likes int);

insert into posts(user_id,post_id,likes) values(101,1,10),(101,2,20),(102,3,15),(102,4,25);


select 
user_id,post_id,likes,
sum(likes) over(partition by user_id) as user_total_likes
from posts;

select upper('sahil');
select concat('sumit',' ','kadam');
select length('sahil');
select now();
select current_timestamp();