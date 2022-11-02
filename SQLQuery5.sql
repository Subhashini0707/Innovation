create table SUBHAHINI_STATION_NAME(ID int PRIMARY KEY(ID), STATION_NAME varchar(80))

select * from SUBHAHINI_STATION_NAME
insert into SUBHAHINI_STATION_NAME values (1,'Central')
insert into SUBHAHINI_STATION_NAME values (2,'Egmore')
insert into SUBHAHINI_STATION_NAME values (3,'Nugabakam ')
insert into SUBHAHINI_STATION_NAME values (4,'St.thomas mount')
insert into SUBHAHINI_STATION_NAME values (5,'Tambaram')

create table JOURNEY_DISTINATIONS
(STARTING_POINT int foreign key references  SUBHAHINI_STATION_NAME (ID),
ENDING_POINT int foreign key references SUBHAHINI_STATION_NAME(ID),DISTANCE int )

select * from JOURNEY_DISTINATIONS
alter table JOURNEY_DISTINATIONS add REACHING_TIMINGS varchar(20);

insert into JOURNEY_DISTINATIONS values (1,5,120,0)
create procedure CAL_TIME_DURATION

@SPEED int  
as
begin
select * from JOURNEY_DISTINATIONS
update JOURNEY_DISTINATIONS set REACHING_TIMINGS=(DISTANCE*@SPEED)
where   REACHING_TIMINGS ='0'
end
exec CAL_TIME_DURATION '100'