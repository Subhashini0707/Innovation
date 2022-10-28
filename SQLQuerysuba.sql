use New_joinee_2022
CREATE Table SUBHA_EMPLOYEES(ID Int Primary key,
Frist_Name varchar(40),
Last_Name Varchar(40),
Salary DECIMAL(8,2),
Department_id Int,
Year_of_Joining Datetime,
year_of_relieving datetime)
Create Table SUBHA_DEPARTMENTS
(DEPARTMENT_ID INT PRIMARY KEY,
MANAGER_ID INT,
DEPARTMENT_Name varchar(50))


select * from SUBHA_EMPLOYEES
select *from SUBHA_DEPARTMENTS
insert into SUBHA_EMPLOYEES(ID,Frist_Name,Last_Name,Salary,Department_id,Year_of_Joining,year_of_relieving)
values(101, 'Shivani','Sri',2000,10,2019,2025)
update SUBHA_EMPLOYEES set Year_of_Joining='2019-10-21 01:30:00'  where ID=101
update SUBHA_EMPLOYEES set year_of_relieving='2028-10-21 01:30:00' where ID=101

insert into SUBHA_EMPLOYEES(ID,Frist_Name,Last_Name,Salary,Department_id,Year_of_Joining,year_of_relieving)
values
(102, 'jyo','vignesh',3000,20,2019,2025)
update SUBHA_EMPLOYEES set Department_id=22 where Department_id=20
update SUBHA_EMPLOYEES set Year_of_Joining='2018-10-21 01:30:00'  where ID=102
update SUBHA_EMPLOYEES set year_of_relieving='2028-10-21 01:30:00' where ID=102
insert into SUBHA_EMPLOYEES(ID,Frist_Name,Last_Name,Salary,Department_id,Year_of_Joining,year_of_relieving)
values
(103 ,'nandhini','Ajay',6000,30,2017,2024)
update SUBHA_EMPLOYEES set Year_of_Joining='2017-10-21 01:30:00'  where ID=103
update SUBHA_EMPLOYEES set year_of_relieving='2030-10-21 01:30:00' where ID=103
insert into SUBHA_EMPLOYEES(ID,Frist_Name,Last_Name,Salary,Department_id,Year_of_Joining,year_of_relieving)
values

(104 ,'jiya','josh',1000,40,2020,2026)
update  SUBHA_EMPLOYEES set Salary=5000 where ID=104
update SUBHA_EMPLOYEES set Year_of_Joining='2022-10-21 01:30:00' where ID=104
update SUBHA_EMPLOYEES set year_of_relieving='2032-10-21 01:30:00' where ID=104
insert into SUBHA_EMPLOYEES(ID,Frist_Name,Last_Name,Salary,Department_id,Year_of_Joining,year_of_relieving)
values
(105 ,'Subha','Arjun',4000,80,2019,2025)
---update SUBHA_EMPLOYEES set ID=105 where Department_id=50
update SUBHA_EMPLOYEES set Year_of_Joining='2003-10-21 01:30:00' where ID=105
update SUBHA_EMPLOYEES set year_of_relieving='2020-10-21 01:30:00' where ID=105
update SUBHA_EMPLOYEES set Frist_Name=null where ID=105
insert into SUBHA_EMPLOYEES(ID,Frist_Name,Last_Name,Salary,Department_id,Year_of_Joining,year_of_relieving)
values


(107 ,'kavin','Das',1000,90,2019,2025)


update SUBHA_EMPLOYEES set Salary=10000 where ID=107
update SUBHA_EMPLOYEES set Department_id=90 where Department_id=80
update SUBHA_EMPLOYEES set Last_Name='Navin' where Last_Name='Das'
update SUBHA_EMPLOYEES set Salary=10000 where ID=107
update SUBHA_EMPLOYEES set Year_of_Joining='2019-10-21 01:30:00'  where ID=107
update SUBHA_EMPLOYEES set year_of_relieving='2035-10-21 01:30:00' where ID=107
insert into SUBHA_EMPLOYEES(ID,Frist_Name,Last_Name,Salary,Department_id,Year_of_Joining,year_of_relieving)
values
(108 ,'Rishi','Krish',1000,60,2021,2028)
update SUBHA_EMPLOYEES set Year_of_Joining='2001-10-21 01:30:00' where ID=108
update SUBHA_EMPLOYEES set year_of_relieving='2019-10-21 01:30:00' where ID=108
update SUBHA_EMPLOYEES set Year_of_Joining='2001-5-21 01:30:00' where ID=108

update SUBHA_EMPLOYEES set Salary=12000 where ID=108
update SUBHA_EMPLOYEES set Last_Name='Abi'where ID=108

insert into SUBHA_DEPARTMENTS(DEPARTMENT_ID,MANAGER_ID,DEPARTMENT_Name)values
(10,202,'Hr')
insert into SUBHA_DEPARTMENTS(DEPARTMENT_ID,MANAGER_ID,DEPARTMENT_Name)values
(20,203,'admin')
insert into SUBHA_DEPARTMENTS(DEPARTMENT_ID,MANAGER_ID,DEPARTMENT_Name)values
(30,204,'Sales')
insert into SUBHA_DEPARTMENTS(DEPARTMENT_ID,MANAGER_ID,DEPARTMENT_Name)values
(40,205,'Support')
insert into SUBHA_DEPARTMENTS(DEPARTMENT_ID,MANAGER_ID,DEPARTMENT_Name)values
(50,206,'thcnical')
insert into SUBHA_DEPARTMENTS(DEPARTMENT_ID,MANAGER_ID,DEPARTMENT_Name)values
(60,207,'backend')
insert into SUBHA_DEPARTMENTS(DEPARTMENT_ID,MANAGER_ID,DEPARTMENT_Name)values
(70,208,'frontend');
insert into SUBHA_DEPARTMENTS(DEPARTMENT_ID,MANAGER_ID,DEPARTMENT_Name)values
(80,null,'frontend');
insert into SUBHA_DEPARTMENTS(DEPARTMENT_ID,MANAGER_ID,DEPARTMENT_Name)values
(90,null,'frontend');
--1
select *from SUBHA_EMPLOYEES where Frist_Name like 'S%'
--2
select *from SUBHA_EMPLOYEES where Last_Name like 'N%'
--3
select *from SUBHA_EMPLOYEES where Department_id=90 and Frist_Name like 'S%'
--4
select *from SUBHA_EMPLOYEES where  Department_id like '_2%'
--5
select *from SUBHA_EMPLOYEES where Department_id in(10,30,40,90)
--6
select Frist_Name,Last_Name, Salary from SUBHA_EMPLOYEES where Salary between 5000 and 7000
---7
select *from SUBHA_EMPLOYEES order by  Frist_Name asc
--8
select SUBHA_EMPLOYEES.Frist_Name ,SUBHA_EMPLOYEES .Salary, SUBHA_DEPARTMENTS.DEPARTMENT_ID ,SUBHA_DEPARTMENTS.MANAGER_ID 
from SUBHA_EMPLOYEES inner join SUBHA_DEPARTMENTS
on  SUBHA_DEPARTMENTS.DEPARTMENT_ID=SUBHA_DEPARTMENTS.MANAGER_ID where SUBHA_DEPARTMENTS.MANAGER_ID=null
---9
select Frist_Name, Salary,Department_id from SUBHA_EMPLOYEES order by Department_id asc
---10
select Frist_Name, Salary,Department_id from SUBHA_EMPLOYEES order by Salary desc
---11
select SUBSTRING ( Frist_Name, 1,3) from SUBHA_EMPLOYEES 
---12
select right ( Last_Name, 2) ExactString from SUBHA_EMPLOYEES 
---13
select CHARINDEX ('a', Frist_Name) as matchposition from SUBHA_EMPLOYEES 
---14
select MAX(Salary) as 'maxSalary'from SUBHA_EMPLOYEES 
----15
select MAX(Salary) as ' SecondmaxSalary'from SUBHA_EMPLOYEES where Salary<(select MAX(Salary)  from SUBHA_EMPLOYEES) 
----16
select AVG(Salary) AS 'AVERAGE_SALARY' FROM SUBHA_EMPLOYEES where Department_id=90
---18
select count (Department_id) as 'joined' from SUBHA_EMPLOYEES where Department_id=30
---17
select MAX(Salary) as 'maxSalary'from SUBHA_EMPLOYEES where Year_of_Joining=2021
---19
select Last_Name,  Year_of_Joining from SUBHA_EMPLOYEES where year (Year_of_Joining) between 2000 and 2005
---21
select ID from  SUBHA_EMPLOYEES where Salary>(select avg(Salary)  from SUBHA_EMPLOYEES) 
---24
select upper(Frist_Name) ,lower(Last_Name) from  SUBHA_EMPLOYEES
----22
select datediff (day,Year_of_Joining,year_of_relieving) as WORKING_DAYS_DIFFERENCE,Frist_Name from SUBHA_EMPLOYEES
---23
select ID,Frist_Name from SUBHA_EMPLOYEES where(year (Year_of_Joining)=2022)
----20
select count(Year_of_Joining) 
from  SUBHA_EMPLOYEES
where (year(Year_of_Joining))>=10
---25
select Last_Name , len(Frist_Name) as 'LENGTH OF FIRST NAME'
from SUBHA_EMPLOYEES
where  Last_Name like '_b%'
---26
select Frist_Name ,year( year_of_relieving)-year (Year_of_Joining) experence from SUBHA_EMPLOYEES 
----27
select * from SUBHA_EMPLOYEES  where(month(Year_of_Joining))=5
----28
select ID ,Frist_Name ,Last_Name from  SUBHA_EMPLOYEES where Salary>(select avg(Salary)from SUBHA_EMPLOYEES)
----29
----30
update SUBHA_EMPLOYEES set Frist_Name ='AAA'where ID=105
----31
create view [EMP_VIEWS] as   
select E.ID,FIRST_NAME,E.LAST_NAME,D.DEPARTMENT_ID,D.DEPARTMENT_NAME 
from VASU_EMPLOYEES as E inner join VASU_DEPARTMENTS as D on E.DEPARTMENT_ID= D.DEPARTMENT_ID
select * from EMP_VIEWS
----32
create synonym SUBHA_EMPLOYEES_SYN for SUBHA_EMPLOYEES 
 select * from SUBHA_EMPLOYEES_SYN
 ----33

create procedure SUBHA_PROCEDURE
as 
begin 
select * from SUBHA_EMPLOYEES where Year_of_Joining between '1/1/2010'and '12/31/2022'
end 
Go
exec SUBHA_PROCEDURE
----34
create procedure SUBHA_INSERT
as 
begin 
select * from SUBHA_DEPARTMENTS (DEPARTMENT_ID,MANAGER_ID,DEPARTMENT_Name)
values(20,203,'Admin')
end 
Go
exec SUBHA_INSERT
---35

 select replace(convert(varchar, '2006-12-30',101),'-','') + replace(convert(varchar, '00:38:54',108),':','');