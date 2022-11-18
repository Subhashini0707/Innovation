create table SUBHAHINIS_STATION_NAMES(ID int PRIMARY KEY(ID), STATION_NAME varchar(80))


insert into SUBHAHINIS_STATION_NAMES values (1,'Central')
insert into SUBHAHINIS_STATION_NAMES values (2,'Egmore')
insert into SUBHAHINIS_STATION_NAMES values (3,'Nugabakam ')
insert into SUBHAHINIS_STATION_NAMES values (4,'St.thomas mount')
insert into SUBHAHINIS_STATION_NAMES values (5,'Tambaram')

create table SUBHASHINIS_JOURNEYS_DISTINATIONS
(STARTING_POINT int foreign key references  SUBHAHINI_STATION_NAME (ID),
ENDING_POINT int foreign key references SUBHAHINI_STATION_NAME(ID),DISTANCE int )