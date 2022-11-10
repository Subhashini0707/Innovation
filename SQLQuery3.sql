create table SUBHAHINI_STATION_NAME(ID int PRIMARY KEY(ID), STATION_NAME varchar(80))


insert into SUBHAHINI_STATION_NAME values (1,'Central')
insert into SUBHAHINI_STATION_NAME values (2,'Egmore')
insert into SUBHAHINI_STATION_NAME values (3,'Nugabakam ')
insert into SUBHAHINI_STATION_NAME values (4,'St.thomas mount')
insert into SUBHAHINI_STATION_NAME values (5,'Tambaram')

 

drop table SUBHASHINI_JOURNEY_DISTINATIONS
sp_rename 'JOURNEY_DISTINATIONS' ,'SUBHASHINI_JOURNEY_DISTINATIONS';

drop table SUBHA_JOURNEY_DISTINATION

create table SUBHA_JOURNEY_DISTINATION 
(STARTING_POINT int foreign key references  SUBHAHINI_STATION_NAME (ID),
ENDING_POINT int foreign key references SUBHAHINI_STATION_NAME(ID),DISTANCE int )
alter table SUBHA_JOURNEY_DISTINATION add REACHING_TIMING varchar(20);
alter table SUBHA_JOURNEY_DISTINATION add ID int
update SUBHA_JOURNEY_DISTINATION set ID=1 where STARTING_POINT=1 and ENDING_POINT=2 
update SUBHA_JOURNEY_DISTINATION set ID=12 where STARTING_POINT=1 and ENDING_POINT=3 
update SUBHA_JOURNEY_DISTINATION set ID=2 where ID=2 
update SUBHA_JOURNEY_DISTINATION set ID=3 where STARTING_POINT=1 and ENDING_POINT=4
update SUBHA_JOURNEY_DISTINATION set ID=4where STARTING_POINT=1 and ENDING_POINT=5
update SUBHA_JOURNEY_DISTINATION set ID=5 where STARTING_POINT=2 and ENDING_POINT=3
update SUBHA_JOURNEY_DISTINATION set ID=6 where STARTING_POINT=2 and ENDING_POINT=4
update SUBHA_JOURNEY_DISTINATION set ID=7 where STARTING_POINT=2 and ENDING_POINT=5
update SUBHA_JOURNEY_DISTINATION set ID=8 where STARTING_POINT=3 and ENDING_POINT=4 
update SUBHA_JOURNEY_DISTINATION set ID=9 where STARTING_POINT=3 and ENDING_POINT=5
update SUBHA_JOURNEY_DISTINATION set ID=10 where STARTING_POINT=4 and ENDING_POINT=5 
update SUBHA_JOURNEY_DISTINATION set ID=11 where STARTING_POINT=5and ENDING_POINT=1
update SUBHA_JOURNEY_DISTINATION set ID=12 where STARTING_POINT=5 and ENDING_POINT=2 
update SUBHA_JOURNEY_DISTINATION set ID=13where STARTING_POINT=5 and ENDING_POINT=3
update SUBHA_JOURNEY_DISTINATION set ID=14 where STARTING_POINT=5 and ENDING_POINT=4
update SUBHA_JOURNEY_DISTINATION set ID=15 where STARTING_POINT=4 and ENDING_POINT=1
update SUBHA_JOURNEY_DISTINATION set ID=16 where STARTING_POINT=4and ENDING_POINT=2 
update SUBHA_JOURNEY_DISTINATION set ID=17 where STARTING_POINT=4 and ENDING_POINT=3
update SUBHA_JOURNEY_DISTINATION set ID=18 where STARTING_POINT=3 and ENDING_POINT=1
update SUBHA_JOURNEY_DISTINATION set ID=19 where STARTING_POINT=3 and ENDING_POINT=2
update SUBHA_JOURNEY_DISTINATION set ID=20where STARTING_POINT=2 and ENDING_POINT=1
insert into SUBHA_JOURNEY_DISTINATION values (1,2,10,0)
insert into SUBHA_JOURNEY_DISTINATION values (1,3,30,0)
insert into SUBHA_JOURNEY_DISTINATION values (1,4,40,0)
insert into SUBHA_JOURNEY_DISTINATION values (1,5,50,0)
insert into SUBHA_JOURNEY_DISTINATION values (2,3,10,0)
insert into SUBHA_JOURNEY_DISTINATION values (2,4,20,0)
insert into SUBHA_JOURNEY_DISTINATION values (2,5,30,0)
insert into SUBHA_JOURNEY_DISTINATION values (3,4,10,0)
insert into SUBHA_JOURNEY_DISTINATION values (3,5,20,0)
insert into SUBHA_JOURNEY_DISTINATION values (4,5,10,0)
insert into SUBHA_JOURNEY_DISTINATION values (5,1,50,0)
insert into SUBHA_JOURNEY_DISTINATION values (5,2,40,0)
insert into SUBHA_JOURNEY_DISTINATION values (5,3,30,0)
insert into SUBHA_JOURNEY_DISTINATION values (5,4,10,0)
insert into SUBHA_JOURNEY_DISTINATION values (4,1,40,0)
insert into SUBHA_JOURNEY_DISTINATION values (4,2,30,0)
insert into SUBHA_JOURNEY_DISTINATION values (4,3,10,0)
insert into SUBHA_JOURNEY_DISTINATION values (3,1,30,0)
insert into SUBHA_JOURNEY_DISTINATION values (3,2,20,0)
insert into SUBHA_JOURNEY_DISTINATION values (2,1,10,0)

select * from  SUBHA_JOURNEY_DISTINATION



--select * from SUBHAHINI_STATION_NAME 
    -- join SUBA_JOURNEY_DISTINATION on SUBHAHINI_STATION_NAME.ID=SUBA_JOURNEY_DISTINATION.ID


select * from SUBHAHINI_STATION_NAME

sp_rename 'CAL_TIME_DURATION' ,'SUBHASHINI_CAL_TIME_DURATION';
Alter procedure SUBHASHINI_CAL_TIME_DURATION
@SPEED int output,
@STATION_NAME varchar (80) output,
@STATION_NAMES varchar (80) output
as
begin
 SET NOCOUNT ON
update  SUBHA_JOURNEY_DISTINATION set REACHING_TIMING=(DISTANCE/@SPEED)                                                                          
where  REACHING_TIMING ='0'

select * from SUBHA_JOURNEY_DISTINATION 
where ENDING_POINT=5 and STARTING_POINT  ='1'

select* from SUBHAHINI_STATION_NAME 
    inner join SUBHA_JOURNEY_DISTINATION on SUBHAHINI_STATION_NAME.ID=SUBHA_JOURNEY_DISTINATION.STARTING_POINT 

SELECT STATION_NAME
from SUBHAHINI_STATION_NAME
Right JOIN  SUBHA_JOURNEY_DISTINATION
ON SUBHAHINI_STATION_NAME.ID = SUBHA_JOURNEY_DISTINATION.ENDING_POINT
end
 exec  SUBHASHINI_CAL_TIME_DURATION '2','Central','Tambaram'






  
  


