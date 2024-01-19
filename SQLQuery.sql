create login calendar
with password = 'sqlcalendar'


create user calendar for login calendar

alter server role sysadmin add member calendar
create database calendar
go

use calendar
go

create table january(
	dia int primary key check(dia >= 1 and dia <=31),
	TT varchar(40),
	TM varchar(40),
	constraint monthTurn_FK_TT foreign key (TT)
	references staff(namesurname),
	constraint monthTurn_FK_TM foreign key (TM)
	references staff(namesurname)
)
go

drop table monthTurn_January

create table staff(
	namesurname varchar(40) primary key
)

drop table staff

insert into staff (namesurname) values ('Vallejos Franco')
insert into staff (namesurname) values ('Roldan Gonza')
insert into staff (namesurname) values ('Sloboyen Carlos')

drop table monthTurn

insert into january (dia, TM, TT) values (1, 'Roldan Gonza', 'Sloboyen Carlos')
insert into january (dia, TM, TT) values (2, 'Vallejos Franco', 'Sloboyen Carlos')
insert into january (dia, TM, TT) values (3, 'Sloboyen Carlos', 'Roldan Gonza')
insert into january (dia, TM, TT) values (4, 'Vallejos Franco', 'Roldan Gonza')
insert into january (dia, TM, TT) values (5, 'Sloboyen Carlos', 'Vallejos Franco')
insert into january (dia, TM, TT) values (6, 'Sloboyen Carlos', 'Roldan Gonza')
insert into january (dia, TM, TT) values (7, 'Vallejos Franco', 'Sloboyen Carlos')
insert into january (dia, TM, TT) values (8, 'Roldan Gonza', 'Vallejos Franco')
insert into january (dia, TM, TT) values (9, 'Sloboyen Carlos', 'Roldan Gonza')
insert into january (dia, TM, TT) values (10, 'Roldan Gonza', 'Vallejos Franco')

go
select * from january
