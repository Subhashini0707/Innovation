create table SUBHAHINI_STATION_NAME(ID int PRIMARY KEY(ID), STATION_NAME varchar(80))


insert into SUBHAHINI_STATION_NAME values (1,'Central')
insert into SUBHAHINI_STATION_NAME values (2,'Egmore')
insert into SUBHAHINI_STATION_NAME values (3,'Nugabakam ')
insert into SUBHAHINI_STATION_NAME values (4,'St.thomas mount')
insert into SUBHAHINI_STATION_NAME values (5,'Tambaram')

 
create table SUBHASHINI_JOURNEY_DISTINATIONS
(STARTING_POINT int foreign key references  SUBHAHINI_STATION_NAME (ID),
ENDING_POINT int foreign key references SUBHAHINI_STATION_NAME(ID),DISTANCE int )
drop table SUBHASHINI_JOURNEY_DISTINATIONS
sp_rename 'JOURNEY_DISTINATIONS' ,'SUBHASHINI_JOURNEY_DISTINATIONS';

create table SUBHA_JOURNEY_DISTINATION
(STARTING_POINT int foreign key references  SUBHAHINI_STATION_NAME (ID),
ENDING_POINT int foreign key references SUBHAHINI_STATION_NAME(ID),DISTANCE int )



insert into SUBHA_JOURNEY_DISTINATION values (1,2,10,0)
update SUBHA_JOURNEY_DISTINATION set DISTANCE=120 where STARTING_POINT=1
insert into SUBHA_JOURNEY_DISTINATION values (2,3,10,0)
update SUBHA_JOURNEY_DISTINATION set DISTANCE=120 where STARTING_POINT=2
insert into SUBHA_JOURNEY_DISTINATION values (3,4,10,0)
update SUBHA_JOURNEY_DISTINATION set DISTANCE=120 where STARTING_POINT=3
insert into SUBHA_JOURNEY_DISTINATION values (4,5,10,0)
update SUBHA_JOURNEY_DISTINATION set DISTANCE=120 where STARTING_POINT=4



drop table SUBHA_JOURNEY_DISTINATION
create table SUBHA_JOURNEY_DISTINATION 
(STARTING_POINT int foreign key references  SUBHAHINI_STATION_NAME (ID),
ENDING_POINT int foreign key references SUBHAHINI_STATION_NAME(ID),DISTANCE int )
alter table SUBHA_JOURNEY_DISTINATION add REACHING_TIMING varchar(20);
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
select * from SUBHAHINI_STATION_NAME
select * from SUBHAHINI_STATION_NAME
select SUBHAHINI_STATION_NAME.STATION_NAME,SUBHA_JOURNEY_DISTINATION.STARTING_POINT ,SUBHA_JOURNEY_DISTINATION.ENDING_POINT from SUBHAHINI_STATION_NAME
inner join SUBHA_JOURNEY_DISTINATION on SUBHAHINI_STATION_NAME.ID=SUBHA_JOURNEY_DISTINATION.STARTING_POINT

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
  --   inner join SUBHA_JOURNEY_DISTINATION on SUBHAHINI_STATION_NAME.ID=SUBHA_JOURNEY_DISTINATION.STARTING_POINT

where ENDING_POINT=5 and STARTING_POINT  ='1'select * from SUBHAHINI_STATION_NAME 
    inner join SUBHA_JOURNEY_DISTINATION on SUBHAHINI_STATION_NAME.ID=SUBHA_JOURNEY_DISTINATION.ENDING_POINT 
--where 

end
  exec  SUBHASHINI_CAL_TIME_DURATION '2','Central','Tambaram'