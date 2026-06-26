create database itvedant ;
use itvedant ;
create table Student
(
stud_id int ,
stud_name varchar(20),
age int ,
email varchar(30)
);
insert into Student values(11,'sahil',21,'sahil@gmail.com');
insert into Student values(12,'aditya',18,'aditya@gmail.com');
insert into Student values(13,'sumit',23,'sumit@gmail.com');
insert into Student values(14,'ayush',19,'ayushkale@gmail.com');
insert into Student values(15,'raj',25,'rajkale@gmail.com'),(16,'mayur',19,'mayur12@gmail.com');
select * from Student;
use itvedant ;
select count(*) from Student;
select * from Student;
set sql_safe_updates=0;
select * from Student;
update Student
set stud_name = 'suraj'
where stud_id=16;
select * from Student;
delete from Student
where stud_id=15;
delete from Student
where stud_id=16;
select * from Student;
delete from Student
where stud_id=14;
select * from Student;
select sum(age) from Student;
select max(age) from Student;
select min(age) from Student;
select avg(age) from Student;
select count(age) from Student;
select sum(age),max(age),min(age),avg(age),count(age) from Student;
use itvedant ;
select * from Student
where stud_id>12;
select * from Student
where stud_id=13 and stud_name='sumit';
select * from Student
where stud_id=13 or stud_name='sahil';
select * from Student
where stud_id=11 or stud_id=12 or stud_id=13;
select * from Student
where stud_id not in(11,12,14);


create database BankingDB;
use BankingDB;
create table Customers(
CustomerID int primary key,
FirstName varchar(50),
LastName varchar(50),
Email varchar(100),
Phone varchar(15),
AccountCreationDate date
);
create	table Accounts(
AccountID int primary key,
CustomerID int,
AccountType varchar(20),
Balance decimal(10,2),
foreign key(CustomerID) references Customers(CustomerID) );


create table Transactions(
TransactionID int primary key,
AccountID int,
TransactionDate date,
Amount decimal(10,2),
TransactionType varchar(20),
foreign key(AccountID) references Accounts(AccountID) );


create table Branches (
BranchID int primary key,
BranchName varchar(100),
BranchAddress varchar(200),
BranchPhone varchar(15) );

create table AccountBranches(
AccountID int,
BranchID int,
AssignmentDate date,
foreign key (AccountID) references Accounts(AccountID),
foreign key (BranchID) references Branches(BranchID) );


create table Loans(
LoanID int primary key,
CustomerID int,
LoanAmount decimal (10,2),
InterestRate decimal (5,2),
StartDate date,
EndDate date,
foreign key (CustomerID) references Customers(CustomerID) );
drop table Acocounts;




create database LicDB;
use LicDB;

create table Policyholder(
PolicyID INT primary KEY,
PolicyholderName varchar(50),
Gender varchar(15),
PhoneNumber varchar(15)  );


create table Agent(
AgentID int primary key,
AgentName varchar(100),
LicenseNumber int,
PolicyID int,
foreign key (PolicyID) references Policyholder(PolicyID) );


create table Branches(
BranchID int Primary key,
AgentID int,
BranchName varchar(50),
foreign key (AgentID) references Agent(AgentID) );



create table Nominee(
NomineeID int primary key,
PolicyID int,
AgentID int,
NomineeName varchar(50),
foreign key (PolicyID) references Policyholder(PolicyID),
foreign key (AgentID) references Agent(AgentID) );


create TABLE Claim(
ClaimID int primary key,
PolicyID int,
ClaimAmount decimal (10,2),
foreign key (PolicyID) references Policyholder(PolicyID) );
SHOW DATABASE;



USE BankingDB;
alter table Customers
add DateofBirth date;

alter table Customers
modify Phone varchar(20);

alter table Customers
change column Email EmailID  varchar(100);
select * from Customers;

alter table Customers
drop column Phone;
  
  desc Customers;
  
 alter table Customers
add Phone varchar(20);

  desc Customers;
  
  alter table Customers
  rename to CustInfo;
  
   desc Customers;
     desc CustInfo;
     
     alter table CustInfo
     add Adhar varchar(20)
     after EmailID;
     desc CustInfo;
     

     

     




















