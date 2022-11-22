create table SUBHAHINI_STATION_NAMES(ID int PRIMARY KEY(ID), STATION_NAME varchar(80))


insert into SUBHAHINI_STATION_NAMES values (1,'Central')
insert into SUBHAHINI_STATION_NAMES values (2,'Egmore')
insert into SUBHAHINI_STATION_NAMES values (3,'Nugabakam ')
insert into SUBHAHINI_STATION_NAMES values (4,'St.thomas mount')
insert into SUBHAHINI_STATION_NAMES values (5,'Tambaram')

select ID from SUBHAHINI_STATION_NAMES   where STATION_NAME = 'Egmore'

select ID from SUBHAHINI_STATION_NAMES where STATION_NAME='Tambaram'

--DECLARE @PurchaseName AS NVARCHAR(50)
--SELECT @PurchaseName = [Name]
--FROM [Purchasing].[Vendor]
--WHERE BusinessEntityID = 1492

Declare @Starting_Id as int
Select @Starting_Id =ID
from  SUBHAHINI_STATION_NAMES
where STATION_NAME='Egmore'
print @Starting_Id 

Declare @Ending_Id as int
select @Ending_Id=ID
from SUBHAHINI_STATION_NAMES 
where STATION_NAME='Tambaram'
print @Ending_Id

create table SUBHAHINIS_JOURNEYS_DISTINATIONS
(id int, STARTING_POINT int foreign key references  SUBHAHINI_STATION_NAMES (ID),ENDING_POINT int foreign key references SUBHAHINI_STATION_NAMES(ID)
,DISTANCE int )


alter table SUBHAHINIS_JOURNEYS_DISTINATIONS add REACHING_TIMING varchar(20);

insert into SUBHAHINIS_JOURNEYS_DISTINATIONS values (1,1,2,10,0)
insert into SUBHAHINIS_JOURNEYS_DISTINATIONS values (2,1,3,30,0)
insert into SUBHAHINIS_JOURNEYS_DISTINATIONS values (3,1,4,40,0)
insert into SUBHAHINIS_JOURNEYS_DISTINATIONS values (4,1,5,50,0)
insert into SUBHAHINIS_JOURNEYS_DISTINATIONS values (5,2,3,10,0)
insert into SUBHAHINIS_JOURNEYS_DISTINATIONS values (6,2,4,20,0)
insert into SUBHAHINIS_JOURNEYS_DISTINATIONS values (7,2,5,30,0)
insert into SUBHAHINIS_JOURNEYS_DISTINATIONS values (8,3,4,10,0)
insert into SUBHAHINIS_JOURNEYS_DISTINATIONS values (9,3,5,20,0)
insert into SUBHAHINIS_JOURNEYS_DISTINATIONS values (10,4,5,10,0)
insert into SUBHAHINIS_JOURNEYS_DISTINATIONS values (11,5,1,50,0)
insert into SUBHAHINIS_JOURNEYS_DISTINATIONS values (12,5,2,40,0)
insert into SUBHAHINIS_JOURNEYS_DISTINATIONS values (13,5,3,30,0)
insert into SUBHAHINIS_JOURNEYS_DISTINATIONS values (14,5,4,10,0)
insert into SUBHAHINIS_JOURNEYS_DISTINATIONS values (15,4,1,40,0)
insert into SUBHAHINIS_JOURNEYS_DISTINATIONS values (16,4,2,30,0)
insert into SUBHAHINIS_JOURNEYS_DISTINATIONS values (17,4,3,10,0)
insert into SUBHAHINIS_JOURNEYS_DISTINATIONS values (18,3,1,30,0)
insert into SUBHAHINIS_JOURNEYS_DISTINATIONS values (19,3,2,20,0)
insert into SUBHAHINIS_JOURNEYS_DISTINATIONS values (20,2,1,10,0)

select * from SUBHAHINIS_JOURNEYS_DISTINATIONS 
select * from SUBHAHINI_STATION_NAMES



alter procedure SUBHASHINI_TIME_DURATION  
@SPEED int output,  
@START varchar (80)output ,  
@END varchar (80) output 
as  
begin  
 Declare @Starting_Id as int ,  @Ending_Id as int

 Select @Starting_Id =ID from SUBHAHINI_STATION_NAMES where STATION_NAME= @START
 select @Ending_Id=ID from SUBHAHINI_STATION_NAMES  where STATION_NAME=@END

-- select @Starting_Id,@Ending_Id

select * from SUBHAHINI_STATION_NAMES s  
join SUBHAHINIS_JOURNEYS_DISTINATIONS n  
on s.ID = n. STARTING_POINT   
 JOIN SUBHAHINI_STATION_NAME as sn  
ON sn.ID=n .ENDING_POINT WHERE n. STARTING_POINT = @Starting_Id AND ENDING_POINT= @Ending_Id  
 
  
end 


exec SUBHASHINI_TIME_DURATION '6','Central','Tambaram'

SELECT sn.STATION_NAME,sd .STARTING_POINT ,ss.STATION_NAME,sd.ENDING_POINT,sd.REACHING_TIMING,sd.DISTANCE
FROM SUBHAHINIS_JOURNEYS_DISTINATIONS as sd
 JOIN  SUBHAHINI_STATION_NAME as sn 
ON sn.ID=sd .STARTING_POINT  
 JOIN SUBHAHINI_STATION_NAME as ss
ON ss.ID=sd .ENDING_POINT 